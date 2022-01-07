
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DIRLIST ;


 int * EnumDirEx (char*,int *) ;

DIRLIST *EnumDir(char *dirname)
{
 return EnumDirEx(dirname, ((void*)0));
}
