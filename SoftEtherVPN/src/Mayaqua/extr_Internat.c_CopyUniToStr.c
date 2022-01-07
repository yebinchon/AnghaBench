
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef scalar_t__ UINT ;


 scalar_t__ CalcUniToStr (int *) ;
 char* CopyStr (char*) ;
 char* Malloc (scalar_t__) ;
 int UniToStr (char*,scalar_t__,int *) ;

char *CopyUniToStr(wchar_t *unistr)
{
 char *str;
 UINT str_size;

 if (unistr == ((void*)0))
 {
  return ((void*)0);
 }

 str_size = CalcUniToStr(unistr);
 if (str_size == 0)
 {
  return CopyStr("");
 }
 str = Malloc(str_size);
 UniToStr(str, str_size, unistr);

 return str;
}
