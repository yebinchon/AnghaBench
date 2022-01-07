
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_7__ {int Size; } ;
typedef TYPE_1__ BUF ;


 int DumpBufW (TYPE_1__*,int *) ;
 int FreeBuf (TYPE_1__*) ;
 TYPE_1__* ReadDumpExW (int *,int) ;
 int SeekBuf (TYPE_1__*,int ,int ) ;
 int WriteBufChar (TYPE_1__*,int) ;

bool FileCopyExWithEofW(wchar_t *src, wchar_t *dst, bool read_lock)
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

 SeekBuf(b, b->Size, 0);

 WriteBufChar(b, 0x1A);

 SeekBuf(b, 0, 0);

 ret = DumpBufW(b, dst);

 FreeBuf(b);

 return ret;
}
