
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* CopyStr (char*) ;
 int Free (char*) ;
 scalar_t__ StrLen (char*) ;
 int Trim (char*) ;

bool IsEmptyStr(char *str)
{
 char *s;

 if (str == ((void*)0))
 {
  return 1;
 }

 s = CopyStr(str);
 Trim(s);

 if (StrLen(s) == 0)
 {
  Free(s);
  return 1;
 }
 else
 {
  Free(s);
  return 0;
 }
}
