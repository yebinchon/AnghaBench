
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int P12 ;
typedef int BUF ;


 int DumpBufW (int *,int *) ;
 int FreeBuf (int *) ;
 int * P12ToBuf (int *) ;

bool P12ToFileW(P12 *p12, wchar_t *filename)
{
 BUF *b;

 if (p12 == ((void*)0) || filename == ((void*)0))
 {
  return 0;
 }

 b = P12ToBuf(p12);
 if (b == ((void*)0))
 {
  return 0;
 }

 if (DumpBufW(b, filename) == 0)
 {
  FreeBuf(b);
  return 0;
 }

 FreeBuf(b);

 return 1;
}
