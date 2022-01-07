
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int IO ;


 int FileClose (int *) ;
 int * FileOpenInnerW (int *,int,int) ;

bool IsFileExistsInnerW(wchar_t *name)
{
 IO *o;

 if (name == ((void*)0))
 {
  return 0;
 }

 o = FileOpenInnerW(name, 0, 0);
 if (o == ((void*)0))
 {
  return 0;
 }

 FileClose(o);

 return 1;
}
