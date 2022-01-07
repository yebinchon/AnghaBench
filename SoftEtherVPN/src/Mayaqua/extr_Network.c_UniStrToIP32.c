
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;


 char* CopyUniToStr (int *) ;
 int Free (char*) ;
 int StrToIP32 (char*) ;

UINT UniStrToIP32(wchar_t *str)
{
 UINT ret;
 char *tmp;

 tmp = CopyUniToStr(str);
 ret = StrToIP32(tmp);
 Free(tmp);

 return ret;
}
