
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
struct IP {int dummy; } ;
typedef int IP ;
typedef int FOLDER ;


 int CfgGetStr (int *,char*,char*,int) ;
 int MAX_SIZE ;
 int StrToIP (struct IP*,char*) ;
 int Zero (struct IP*,int) ;

bool CfgGetIp(FOLDER *f, char *name, struct IP *ip)
{
 char tmp[MAX_SIZE];

 if (f == ((void*)0) || name == ((void*)0) || ip == ((void*)0))
 {
  return 0;
 }

 Zero(ip, sizeof(IP));

 if (CfgGetStr(f, name, tmp, sizeof(tmp)) == 0)
 {
  return 0;
 }

 if (StrToIP(ip, tmp) == 0)
 {
  return 0;
 }

 return 1;
}
