
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int IO ;


 int FileClose (int *) ;
 int * FileOpenW (int *,int) ;
 int IsFileExistsW (int *) ;

bool IsFileWriteLockedW(wchar_t *name)
{
 IO *io;

 if (name == ((void*)0))
 {
  return 0;
 }

 if (IsFileExistsW(name) == 0)
 {
  return 0;
 }

 io = FileOpenW(name, 1);
 if (io == ((void*)0))
 {
  return 1;
 }

 FileClose(io);

 return 0;
}
