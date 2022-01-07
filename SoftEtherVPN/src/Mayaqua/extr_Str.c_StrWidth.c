
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;


 int * CopyStrToUni (char*) ;
 int Free (int *) ;
 int UniStrWidth (int *) ;

UINT StrWidth(char *str)
{
 wchar_t *s;
 UINT ret;

 if (str == ((void*)0))
 {
  return 0;
 }

 s = CopyStrToUni(str);
 ret = UniStrWidth(s);
 Free(s);

 return ret;
}
