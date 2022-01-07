
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int * CopyStrToUni (char*) ;
 int Free (int *) ;
 int LoadTableW (int *) ;

bool LoadTable(char *filename)
{
 wchar_t *filename_a = CopyStrToUni(filename);
 bool ret = LoadTableW(filename_a);

 Free(filename_a);

 return ret;
}
