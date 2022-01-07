
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int LIST ;


 char* GetParamStr (int *,char*) ;
 scalar_t__ StartWith (char*,char*) ;
 int StrCpy (char*,int,char*) ;
 scalar_t__ ToInt (char*) ;
 int Trim (char*) ;

bool GetParamYes(LIST *o, char *name)
{
 char *s;
 char tmp[64];

 if (o == ((void*)0))
 {
  return 0;
 }

 s = GetParamStr(o, name);
 if (s == ((void*)0))
 {
  return 0;
 }

 StrCpy(tmp, sizeof(tmp), s);
 Trim(tmp);

 if (StartWith(tmp, "y"))
 {
  return 1;
 }

 if (StartWith(tmp, "t"))
 {
  return 1;
 }

 if (ToInt(tmp) != 0)
 {
  return 1;
 }

 return 0;
}
