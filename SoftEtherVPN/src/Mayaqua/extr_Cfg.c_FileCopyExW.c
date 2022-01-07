
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int BUF ;


 int DumpBufW (int *,int *) ;
 int FreeBuf (int *) ;
 int * ReadDumpExW (int *,int) ;
 int SeekBuf (int *,int ,int ) ;

bool FileCopyExW(wchar_t *src, wchar_t *dst, bool read_lock)
{
 BUF *b;
 bool ret = 0;

 if (src == ((void*)0) || dst == ((void*)0))
 {
  return 0;
 }

 b = ReadDumpExW(src, 0);
 if (b == ((void*)0))
 {
  return 0;
 }

 SeekBuf(b, 0, 0);

 ret = DumpBufW(b, dst);

 FreeBuf(b);

 return ret;
}
