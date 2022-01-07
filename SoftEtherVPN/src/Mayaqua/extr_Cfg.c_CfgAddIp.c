
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
struct IP {int dummy; } ;
typedef int ITEM ;
typedef int FOLDER ;


 int * CfgAddStr (int *,char*,char*) ;
 int IPToStr (char*,int,struct IP*) ;
 int MAX_SIZE ;

ITEM *CfgAddIp(FOLDER *f, char *name, struct IP *ip)
{
 char tmp[MAX_SIZE];

 if (f == ((void*)0) || name == ((void*)0) || ip == ((void*)0))
 {
  return ((void*)0);
 }

 IPToStr(tmp, sizeof(tmp), ip);

 return CfgAddStr(f, name, tmp);
}
