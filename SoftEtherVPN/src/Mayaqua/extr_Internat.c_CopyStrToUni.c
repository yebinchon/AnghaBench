
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef scalar_t__ UINT ;


 scalar_t__ CalcStrToUni (char*) ;
 int * CopyUniStr (char*) ;
 int * Malloc (scalar_t__) ;
 int StrToUni (int *,scalar_t__,char*) ;

wchar_t *CopyStrToUni(char *str)
{
 wchar_t *uni;
 UINT uni_size;

 if (str == ((void*)0))
 {
  return ((void*)0);
 }

 uni_size = CalcStrToUni(str);
 if (uni_size == 0)
 {
  return CopyUniStr(L"");
 }
 uni = Malloc(uni_size);
 StrToUni(uni, uni_size, str);

 return uni;
}
