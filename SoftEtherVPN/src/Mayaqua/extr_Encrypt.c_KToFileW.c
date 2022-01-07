
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int K ;
typedef int BUF ;


 int DumpBufW (int *,int *) ;
 int FreeBuf (int *) ;
 int * KToBuf (int *,int,char*) ;

bool KToFileW(K *k, wchar_t *filename, bool text, char *password)
{
 BUF *b;
 bool ret;

 if (k == ((void*)0) || filename == ((void*)0))
 {
  return 0;
 }

 b = KToBuf(k, text, password);
 if (b == ((void*)0))
 {
  return 0;
 }

 ret = DumpBufW(b, filename);
 FreeBuf(b);

 return ret;
}
