
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;
typedef int IO ;


 int FileClose (int *) ;
 int * FileCreateW (int *) ;
 int FileWrite (int *,void*,int ) ;

bool SaveFileW(wchar_t *name, void *data, UINT size)
{
 IO *io;

 if (name == ((void*)0) || (data == ((void*)0) && size != 0))
 {
  return 0;
 }

 io = FileCreateW(name);
 if (io == ((void*)0))
 {
  return 0;
 }

 if (FileWrite(io, data, size) == 0)
 {
  FileClose(io);
  return 0;
 }

 FileClose(io);

 return 1;
}
