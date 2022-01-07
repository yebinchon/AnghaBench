
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int IO ;


 int FileClose (int *) ;
 int * FileOpenExW (int *,int,int) ;

bool IsFileW(wchar_t *name)
{
 IO *io;

 if (name == ((void*)0))
 {
  return 0;
 }

 io = FileOpenExW(name, 0, 0);
 if (io == ((void*)0))
 {
  return 0;
 }

 FileClose(io);

 return 1;
}
