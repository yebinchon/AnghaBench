
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

bool DumpDataW(void *data, UINT size, wchar_t *filename)
{
 IO *o;

 if (filename == ((void*)0) || (size != 0 && data == ((void*)0)))
 {
  return 0;
 }

 o = FileCreateW(filename);
 if (o == ((void*)0))
 {
  return 0;
 }
 FileWrite(o, data, size);
 FileClose(o);

 return 1;
}
