
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;


 int * CopyUniStr (int *) ;
 int Free (int *) ;
 int UniStrCmpi (int *,int *) ;
 int UniTrim (int *) ;

int UniSoftStrCmp(wchar_t *str1, wchar_t *str2)
{
 UINT ret;
 wchar_t *tmp1, *tmp2;

 if (str1 == ((void*)0) && str2 == ((void*)0))
 {
  return 0;
 }
 if (str1 == ((void*)0))
 {
  return 1;
 }
 if (str2 == ((void*)0))
 {
  return -1;
 }

 tmp1 = CopyUniStr(str1);
 tmp2 = CopyUniStr(str2);

 UniTrim(tmp1);
 UniTrim(tmp2);

 ret = UniStrCmpi(tmp1, tmp2);

 Free(tmp1);
 Free(tmp2);

 return ret;
}
