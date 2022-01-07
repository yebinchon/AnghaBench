
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
struct sockaddr_in {scalar_t__ sin_port; int sin_addr; int sin_len; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct in_addr {int dummy; } ;
typedef int sa ;
typedef int ip_str ;
typedef int UINT ;
typedef int IP ;


 int AF_INET ;
 int Copy (int *,struct in_addr*,int) ;
 int GetHostNameInner6 (char*,int ,int *) ;
 int INET_ADDRSTRLEN ;
 int IPToInAddr (struct in_addr*,int *) ;
 int IPToStr (char*,int,int *) ;
 scalar_t__ IsEmptyStr (char*) ;
 scalar_t__ IsIP6 (int *) ;
 int MAX_SIZE ;
 scalar_t__ StrCmpi (char*,char*) ;
 int StrCpy (char*,int ,char*) ;
 int Zero (struct sockaddr_in*,int) ;
 scalar_t__ getnameinfo (struct sockaddr*,int,char*,int,int *,int ,int ) ;

bool GetHostNameInner(char *hostname, UINT size, IP *ip)
{
 struct in_addr addr;
 struct sockaddr_in sa;
 char tmp[MAX_SIZE];
 char ip_str[64];

 if (hostname == ((void*)0) || ip == ((void*)0))
 {
  return 0;
 }

 if (IsIP6(ip))
 {
  return GetHostNameInner6(hostname, size, ip);
 }


 IPToInAddr(&addr, ip);
 Zero(&sa, sizeof(sa));
 sa.sin_family = AF_INET;





 Copy(&sa.sin_addr, &addr, sizeof(struct in_addr));
 sa.sin_port = 0;

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
