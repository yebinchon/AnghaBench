
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_7__ {int Size; int Buf; } ;
typedef TYPE_1__ BUF ;


 scalar_t__ CalcCompress (int ) ;
 scalar_t__ Compress (int *,scalar_t__,int ,int ) ;
 int Free (int *) ;
 int * Malloc (scalar_t__) ;
 TYPE_1__* NewBuf () ;
 int WriteBuf (TYPE_1__*,int *,scalar_t__) ;
 int WriteBufInt (TYPE_1__*,int ) ;

BUF *CompressBuf(BUF *src_buf)
{
 UINT dst_size;
 UCHAR *dst_buf;
 BUF *b;

 if (src_buf == ((void*)0))
 {
  return ((void*)0);
 }

 dst_size = CalcCompress(src_buf->Size);
 dst_buf = Malloc(dst_size);

 dst_size = Compress(dst_buf, dst_size, src_buf->Buf, src_buf->Size);

 if (dst_size == 0)
 {
  Free(dst_buf);
  return ((void*)0);
 }

 b = NewBuf();
 WriteBufInt(b, src_buf->Size);
 WriteBuf(b, dst_buf, dst_size);

 Free(dst_buf);

 return b;
}
