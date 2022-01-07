
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int BUF ;


 char* CopyUniToStr (int *) ;
 int Free (char*) ;
 int * StrToBin (char*) ;

BUF *UniStrToBin(wchar_t *str)
{
 char *str_a = CopyUniToStr(str);
 BUF *ret;

 ret = StrToBin(str_a);

 Free(str_a);

 return ret;
}
