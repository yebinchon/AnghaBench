
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_8__ {scalar_t__ Size; scalar_t__ Buf; } ;
typedef TYPE_1__ BUF ;


 int Free (int *) ;
 int * Malloc (int ) ;
 TYPE_1__* NewBuf () ;
 int ReadBufInt (TYPE_1__*) ;
 int SeekBuf (TYPE_1__*,int ,int ) ;
 int Uncompress (int *,int ,int *,scalar_t__) ;
 int WriteBuf (TYPE_1__*,int *,int ) ;

BUF *UncompressBuf(BUF *src_buf)
{
 UINT dst_size, dst_size2;
 UCHAR *dst;
 BUF *b;

 if (src_buf == ((void*)0))
 {
  return ((void*)0);
 }

 SeekBuf(src_buf, 0, 0);
 dst_size = ReadBufInt(src_buf);

 dst = Malloc(dst_size);

 dst_size2 = Uncompress(dst, dst_size, ((UCHAR *)src_buf->Buf) + sizeof(UINT), src_buf->Size - sizeof(UINT));

 b = NewBuf();
 WriteBuf(b, dst, dst_size2);
 Free(dst);

 return b;
}
