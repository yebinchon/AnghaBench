
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int sin_addr; } ;
struct in_addr {int sin_addr; } ;
struct addrinfo {scalar_t__ ai_family; int * ai_addr; int ai_protocol; int ai_socktype; } ;
typedef int hint ;
typedef int addr ;
typedef int IP ;


 scalar_t__ AF_INET ;
 int Copy (struct sockaddr_in*,int *,int) ;
 int IPPROTO_TCP ;
 int InAddrToIP (int *,struct sockaddr_in*) ;
 scalar_t__ IsEmptyStr (char*) ;
 int NewDnsCache (char*,int *) ;
 int QueryDnsCache (int *,char*) ;
 int SOCK_STREAM ;
 int SetIP (int *,int,int ,int ,int) ;
 scalar_t__ StrCmpi (char*,char*) ;
 int StrToIP (int *,char*) ;
 int StrToIP6 (int *,char*) ;
 int Zero (struct addrinfo*,int) ;
 int freeaddrinfo (struct addrinfo*) ;
 scalar_t__ getaddrinfo (char*,int *,struct addrinfo*,struct addrinfo**) ;

bool GetIP4Inner(IP *ip, char *hostname)
{
 struct sockaddr_in in;
 struct in_addr addr;
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
  SetIP(ip, 127, 0, 0, 1);
  return 1;
 }

 if (StrToIP6(ip, hostname) == 0 && StrToIP(ip, hostname) == 0)
 {

  Zero(&hint, sizeof(hint));
  hint.ai_family = AF_INET;
  hint.ai_socktype = SOCK_STREAM;
  hint.ai_protocol = IPPROTO_TCP;
  info = ((void*)0);

  if (getaddrinfo(hostname, ((void*)0), &hint, &info) != 0 ||
   info->ai_family != AF_INET)
  {
   if (info)
   {
    freeaddrinfo(info);
   }
   return QueryDnsCache(ip, hostname);
  }

  Copy(&in, info->ai_addr, sizeof(struct sockaddr_in));
  freeaddrinfo(info);
  Copy(&addr, &in.sin_addr, sizeof(addr));
  InAddrToIP(ip, &addr);
 }


 NewDnsCache(hostname, ip);

 return 1;
}
