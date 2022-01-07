
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;
typedef struct in_addr in6_addr ;
typedef int Curl_addrinfo ;


 int AF_INET ;
 int AF_INET6 ;
 scalar_t__ Curl_inet_pton (int ,char*,struct in_addr*) ;
 int * Curl_ip2addr (int ,struct in_addr*,char*,int) ;

Curl_addrinfo *Curl_str2addr(char *address, int port)
{
  struct in_addr in;
  if(Curl_inet_pton(AF_INET, address, &in) > 0)

    return Curl_ip2addr(AF_INET, &in, address, port);
  return ((void*)0);
}
