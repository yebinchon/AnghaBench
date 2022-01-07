
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int * CopyStrToUni (char*) ;
 char* CopyUniToStr (int *) ;
 int Free (int *) ;
 int * ParseCommand (int *,int *) ;

char *ParseCommandA(wchar_t *str, char *name)
{
 wchar_t *tmp1, *tmp2;
 char *ret;

 if (str == ((void*)0))
 {
  return ((void*)0);
 }

 if (name != ((void*)0))
 {
  tmp1 = CopyStrToUni(name);
 }
 else
 {
  tmp1 = ((void*)0);
 }

 tmp2 = ParseCommand(str, tmp1);

 if (tmp2 == ((void*)0))
 {
  ret = ((void*)0);
 }
 else
 {
  ret = CopyUniToStr(tmp2);
  Free(tmp2);
 }

 Free(tmp1);

 return ret;
}
