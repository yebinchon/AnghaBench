
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int PACK ;


 int PackGetStr (int *,char*,char*,int ) ;

bool GetHubnameAndUsernameFromPack(PACK *p, char *username, UINT username_size,
           char *hubname, UINT hubname_size)
{

 if (p == ((void*)0) || username == ((void*)0) || hubname == ((void*)0))
 {
  return 0;
 }

 if (PackGetStr(p, "username", username, username_size) == 0)
 {
  return 0;
 }
 if (PackGetStr(p, "hubname", hubname, hubname_size) == 0)
 {
  return 0;
 }
 return 1;
}
