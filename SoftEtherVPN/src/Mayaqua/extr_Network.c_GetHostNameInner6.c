
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
struct sockaddr_in6 {scalar_t__ sin6_port; int sin6_addr; int sin6_len; int sin6_family; } ;
struct sockaddr {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef int sa ;
typedef int ip_str ;
typedef int UINT ;
typedef int IP ;


 int AF_INET6 ;
 int Copy (int *,struct in6_addr*,int) ;
 int INET6_ADDRSTRLEN ;
 int IPToInAddr6 (struct in6_addr*,int *) ;
 int IPToStr (char*,int,int *) ;
 scalar_t__ IsEmptyStr (char*) ;
 int MAX_SIZE ;
 scalar_t__ StrCmpi (char*,char*) ;
 int StrCpy (char*,int ,char*) ;
 int Zero (struct sockaddr_in6*,int) ;
 scalar_t__ getnameinfo (struct sockaddr*,int,char*,int,int *,int ,int ) ;

bool GetHostNameInner6(char *hostname, UINT size, IP *ip)
{
 struct in6_addr addr;
 struct sockaddr_in6 sa;
 char tmp[MAX_SIZE];
 char ip_str[256];

 if (hostname == ((void*)0) || ip == ((void*)0))
 {
  return 0;
 }


 IPToInAddr6(&addr, ip);
 Zero(&sa, sizeof(sa));
 sa.sin6_family = AF_INET6;





 Copy(&sa.sin6_addr, &addr, sizeof(struct in6_addr));
 sa.sin6_port = 0;

 if (getnameinfo((struct sockaddr *)&sa, sizeof(sa), tmp, sizeof(tmp), ((void*)0), 0, 0) != 0)
 {
  return 0;
 }

 IPToStr(ip_str, sizeof(ip_str), ip);

 if (StrCmpi(tmp, ip_str) == 0)
 {
  return 0;
 }

 if (IsEmptyStr(tmp))
 {
  return 0;
 }

 StrCpy(hostname, size, tmp);

 return 1;
}
