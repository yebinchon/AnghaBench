
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int in_addr_t ;


 int inet_addr (char*) ;

bool validateIpAddress(char* ip) {
  in_addr_t ipAddr = inet_addr(ip);
  return (ipAddr != 0) && (ipAddr != 0xffffffff);
}
