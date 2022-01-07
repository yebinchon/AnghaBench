
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;


 scalar_t__ IsEmptyStr (char*) ;
 int MAX_SIZE ;
 scalar_t__ StartWith (char*,char*) ;
 int StrCpy (char*,int,char*) ;
 scalar_t__ ToInt (char*) ;
 int Trim (char*) ;

bool ToBool(char *str)
{
 char tmp[MAX_SIZE];

 if (str == ((void*)0))
 {
  return 0;
 }

 StrCpy(tmp, sizeof(tmp), str);
 Trim(tmp);

 if (IsEmptyStr(tmp))
 {
  return 0;
 }

 if (ToInt(tmp) != 0)
 {
  return 1;
 }

 if (StartWith("true", tmp))
 {
  return 1;
 }

 if (StartWith("yes", tmp))
 {
  return 1;
 }

 if (StartWith(tmp, "true"))
 {
  return 1;
 }

 if (StartWith(tmp, "yes"))
 {
  return 1;
 }

 return 0;
}
