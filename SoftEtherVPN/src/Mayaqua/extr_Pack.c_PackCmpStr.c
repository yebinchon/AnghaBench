
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int PACK ;


 int MAX_SIZE ;
 int PackGetStr (int *,char*,char*,int) ;
 scalar_t__ StrCmpi (char*,char*) ;

bool PackCmpStr(PACK *p, char *name, char *str)
{
 char tmp[MAX_SIZE];

 if (PackGetStr(p, name, tmp, sizeof(tmp)) == 0)
 {
  return 0;
 }

 if (StrCmpi(tmp, str) == 0)
 {
  return 1;
 }

 return 0;
}
