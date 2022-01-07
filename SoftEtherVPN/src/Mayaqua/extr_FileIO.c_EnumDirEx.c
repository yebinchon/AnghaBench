
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int DIRLIST ;
typedef int COMPARE ;


 int * CopyStrToUni (char*) ;
 int * EnumDirExW (int *,int *) ;
 int Free (int *) ;

DIRLIST *EnumDirEx(char *dirname, COMPARE *compare)
{
 wchar_t *dirname_w = CopyStrToUni(dirname);
 DIRLIST *ret = EnumDirExW(dirname_w, compare);

 Free(dirname_w);

 return ret;
}
