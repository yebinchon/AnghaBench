
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int IO ;


 int * FileOpenExW (int *,int,int) ;

IO *FileOpenW(wchar_t *name, bool write_mode)
{
 return FileOpenExW(name, write_mode, 1);
}
