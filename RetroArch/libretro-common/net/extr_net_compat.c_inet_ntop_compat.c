
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin_family; int sin6_family; int sin6_addr; int sin_addr; } ;
struct sockaddr_in {int sin_family; int sin6_family; int sin6_addr; int sin_addr; } ;
struct sockaddr {int dummy; } ;
struct in_addr6_compat {int dummy; } ;
struct in_addr {int dummy; } ;
typedef int socklen_t ;
typedef int in ;


 int AF_INET ;
 int AF_INET6 ;
 int NI_NUMERICHOST ;
 int getnameinfo (struct sockaddr*,int,char*,int ,int *,int ,int ) ;
 char const* inet_ntop (int,void const*,char*,int ) ;
 char const* isockaddr_ntop (int,void const*,char*,int ) ;
 int memcpy (int *,void const*,int) ;
 int memset (struct sockaddr_in6*,int ,int) ;
 char const* sceNetInetNtop (int,void const*,char*,int ) ;

const char *inet_ntop_compat(int af, const void *src, char *dst, socklen_t cnt)
{
   return inet_ntop(af, src, dst, cnt);

}
