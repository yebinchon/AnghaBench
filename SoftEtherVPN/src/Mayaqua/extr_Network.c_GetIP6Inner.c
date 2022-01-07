
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_addr; } ;
struct in6_addr {int sin6_addr; } ;
struct addrinfo {scalar_t__ ai_family; int * ai_addr; int ai_protocol; int ai_socktype; } ;
typedef int hint ;
typedef int addr ;
typedef int IP ;


 scalar_t__ AF_INET6 ;
 int Copy (struct sockaddr_in6*,int *,int) ;
 int GetLocalHostIP6 (int *) ;
 int IPPROTO_TCP ;
 int InAddrToIP6 (int *,struct sockaddr_in6*) ;
 scalar_t__ IsEmptyStr (char*) ;
 int NewDnsCache (char*,int *) ;
 int QueryDnsCacheEx (int *,char*,int) ;
 int SOCK_STREAM ;
 scalar_t__ StrCmpi (char*,char*) ;
 int StrToIP (int *,char*) ;
 int StrToIP6 (int *,char*) ;
 int Zero (struct addrinfo*,int) ;
 int freeaddrinfo (struct addrinfo*) ;
 scalar_t__ getaddrinfo (char*,int *,struct addrinfo*,struct addrinfo**) ;

bool GetIP6Inner(IP *ip, char *hostname)
{
 struct sockaddr_in6 in;
 struct in6_addr addr;
 struct addrinfo hint;
 struct addrinfo *info;

 if (ip == ((void*)0) || hostname == ((void*)0))
 {
  return 0;
 }

 if (IsEmptyStr(hostname))
 {
  return 0;
 }

 if (StrCmpi(hostname, "localhost") == 0)
 {
  GetLocalHostIP6(ip);
  return 1;
 }

 if (StrToIP6(ip, hostname) == 0 && StrToIP(ip, hostname) == 0)
 {

  Zero(&hint, sizeof(hint));
  hint.ai_family = AF_INET6;
  hint.ai_socktype = SOCK_STREAM;
  hint.ai_protocol = IPPROTO_TCP;
  info = ((void*)0);

  if (getaddrinfo(hostname, ((void*)0), &hint, &info) != 0 ||
   info->ai_family != AF_INET6)
  {
   if (info)
   {
    freeaddrinfo(info);
   }
   return QueryDnsCacheEx(ip, hostname, 1);
  }

  Copy(&in, info->ai_addr, sizeof(struct sockaddr_in6));
  freeaddrinfo(info);

  Copy(&addr, &in.sin6_addr, sizeof(addr));
  InAddrToIP6(ip, &addr);
 }


 NewDnsCache(hostname, ip);

 return 1;
}
