
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef scalar_t__ UINT ;
typedef int IO ;
typedef int BYTE ;


 scalar_t__ CalcUtf8ToUni (int *,scalar_t__) ;
 int FileClose (int *) ;
 int * FileOpen (char*,int) ;
 int FileRead (int *,void*,scalar_t__) ;
 scalar_t__ FileSize (int *) ;
 int Free (int *) ;
 scalar_t__ Malloc (scalar_t__) ;
 int Utf8ToUni (int *,scalar_t__,int *,scalar_t__) ;
 scalar_t__ ZeroMalloc (scalar_t__) ;

__attribute__((used)) static wchar_t *WuUniReadFile(char *filename)
{
 IO *io;
 UINT size, usize;
 BYTE *utf8;
 wchar_t *wchars;


 if (filename == ((void*)0))
 {
  return ((void*)0);
 }

 io = FileOpen(filename, 0);
 if (io == ((void*)0))
 {
  return ((void*)0);
 }


 size = FileSize(io);
 utf8 = (BYTE*)Malloc(size);
 FileRead(io, (void*)utf8, size);
 FileClose(io);

 usize = CalcUtf8ToUni(utf8, size);
 wchars = (wchar_t*)ZeroMalloc(usize+sizeof(wchar_t));
 Utf8ToUni(wchars, usize, utf8, size);
 Free(utf8);

 return wchars;
}
