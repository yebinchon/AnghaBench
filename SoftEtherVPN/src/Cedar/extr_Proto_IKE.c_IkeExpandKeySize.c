
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef scalar_t__ UCHAR ;
struct TYPE_11__ {scalar_t__ Size; void* Buf; } ;
struct TYPE_10__ {scalar_t__ HashSize; } ;
typedef TYPE_1__ IKE_HASH ;
typedef TYPE_2__ BUF ;


 int FreeBuf (TYPE_2__*) ;
 int IKE_MAX_HASH_SIZE ;
 int IkeHMac (TYPE_1__*,scalar_t__*,void*,scalar_t__,scalar_t__*,scalar_t__) ;
 TYPE_2__* MemToBuf (void*,scalar_t__) ;
 TYPE_2__* NewBuf () ;
 int WriteBuf (TYPE_2__*,scalar_t__*,scalar_t__) ;

BUF *IkeExpandKeySize(IKE_HASH *h, void *k, UINT k_size, UINT target_size)
{
 BUF *b1, *b2;
 UCHAR tmp[IKE_MAX_HASH_SIZE];
 UINT tmp_size;

 if (h == ((void*)0) || k == ((void*)0) || k_size == 0)
 {
  return ((void*)0);
 }

 if (k_size >= target_size)
 {
  return MemToBuf(k, target_size);
 }

 tmp[0] = 0;
 tmp_size = 1;
 b1 = NewBuf();

 do
 {
  IkeHMac(h, tmp, k, k_size, tmp, tmp_size);
  WriteBuf(b1, tmp, h->HashSize);

  tmp_size = h->HashSize;
 }
 while (b1->Size < target_size);

 b2 = MemToBuf(b1->Buf, target_size);

 FreeBuf(b1);

 return b2;
}
