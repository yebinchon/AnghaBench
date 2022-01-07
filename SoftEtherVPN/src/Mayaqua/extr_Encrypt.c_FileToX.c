
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int X ;


 int * CopyStrToUni (char*) ;
 int * FileToXW (int *) ;
 int Free (int *) ;

X *FileToX(char *filename)
{
 wchar_t *filename_w = CopyStrToUni(filename);
 X *ret = FileToXW(filename_w);

 Free(filename_w);

 return ret;
}
