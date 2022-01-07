
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int * CopyStrToUni (char*) ;
 int DeleteDirW (int *) ;
 int Free (int *) ;

bool DeleteDir(char *name)
{
 wchar_t *name_w = CopyStrToUni(name);
 bool ret = DeleteDirW(name_w);

 Free(name_w);

 return ret;
}
