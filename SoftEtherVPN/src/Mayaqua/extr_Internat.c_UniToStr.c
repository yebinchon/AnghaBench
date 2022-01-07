
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;


 int CalcUniToStr (int *) ;
 int Free (char*) ;
 char* Malloc (int) ;
 int StrCpy (char*,int,char*) ;
 int UnixUniToStr (char*,int,int *) ;
 int wcstombs (char*,int *,int) ;

UINT UniToStr(char *str, UINT size, wchar_t *s)
{
 return UnixUniToStr(str, size, s);

}
