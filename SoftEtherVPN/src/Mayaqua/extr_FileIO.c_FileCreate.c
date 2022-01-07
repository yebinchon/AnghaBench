
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int IO ;


 int * CopyStrToUni (char*) ;
 int * FileCreateW (int *) ;
 int Free (int *) ;

IO *FileCreate(char *name)
{
 wchar_t *name_w = CopyStrToUni(name);
 IO *ret = FileCreateW(name_w);

 Free(name_w);

 return ret;
}
