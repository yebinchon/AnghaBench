
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;


 char* Malloc (scalar_t__) ;
 int StrCpy (char*,scalar_t__,char*) ;
 scalar_t__ StrLen (char*) ;

char *CopyStr(char *str)
{
 UINT len;
 char *dst;

 if (str == ((void*)0))
 {
  return ((void*)0);
 }

 len = StrLen(str);
 dst = Malloc(len + 1);
 StrCpy(dst, len + 1, str);
 return dst;
}
