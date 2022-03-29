// SPDX-License-Identifier: MIT
pragma solidity >=0.5.16;
pragma experimental ABIEncoderV2;


contract routes{

struct Route{
    string date; //struct date{ uint day; uint month; uint year;}
               // eg. monday
    string vehicle;
    string driver; //struct driver { string name, string lname, uint id}
    string location;
    string routebinId;
}

mapping (uint => Route) public routes;
uint public routeCount;

constructor() public {
    routeCount = 0;
}

function setRoute(string memory _date,string memory _vehicle, string memory _driver, string memory _location, string memory _routebinId) public{
    routes[routeCount] = Route (_date,_vehicle, _driver, _location, _routebinId);
    routeCount++;
    }

function getRoute(uint _routeCount) public view returns(Route memory){
    return routes[_routeCount];
    }
}
