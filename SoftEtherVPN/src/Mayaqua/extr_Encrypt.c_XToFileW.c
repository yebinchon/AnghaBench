
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int X ;
typedef int BUF ;


 int DumpBufW (int *,int *) ;
 int FreeBuf (int *) ;
 int * XToBuf (int *,int) ;

bool XToFileW(X *x, wchar_t *filename, bool text)
{
 BUF *b;
 bool ret;

 if (x == ((void*)0) || filename == ((void*)0))
 {
  return 0;
 }

 b = XToBuf(x, text);
 if (b == ((void*)0))
 {
  return 0;
 }

 ret = DumpBufW(b, filename);
 FreeBuf(b);

 return ret;
}
