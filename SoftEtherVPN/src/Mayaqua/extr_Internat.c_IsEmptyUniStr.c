
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int Free (int *) ;
 int * UniCopyStr (int *) ;
 scalar_t__ UniStrLen (int *) ;
 int UniTrim (int *) ;

bool IsEmptyUniStr(wchar_t *str)
{
 bool ret;
 wchar_t *s;

 if (str == ((void*)0))
 {
  return 1;
 }

 s = UniCopyStr(str);

 UniTrim(s);
 if (UniStrLen(s) == 0)
 {
  ret = 1;
 }
 else
 {
  ret = 0;
 }

 Free(s);

 return ret;
}
