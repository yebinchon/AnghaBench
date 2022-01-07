
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int BUF ;


 scalar_t__ CompareBuf (int *,int *) ;
 int DumpBufW (int *,int *) ;
 int FreeBuf (int *) ;
 int * ReadDumpW (int *) ;

bool DumpBufWIfNecessary(BUF *b, wchar_t *filename)
{
 BUF *now;
 bool need = 1;

 if (b == ((void*)0) || filename == ((void*)0))
 {
  return 0;
 }

 now = ReadDumpW(filename);

 if (now != ((void*)0))
 {
  if (CompareBuf(now, b))
  {
   need = 0;
  }

  FreeBuf(now);
 }

 if (need == 0)
 {
  return 1;
 }
 else
 {
  return DumpBufW(b, filename);
 }
}
