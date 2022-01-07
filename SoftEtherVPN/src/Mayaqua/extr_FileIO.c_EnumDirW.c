
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int DIRLIST ;


 int * EnumDirExW (int *,int *) ;

DIRLIST *EnumDirW(wchar_t *dirname)
{
 return EnumDirExW(dirname, ((void*)0));
}
