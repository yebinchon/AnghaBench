
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_4__ {scalar_t__ Current; scalar_t__ Size; int * Buf; } ;
typedef TYPE_1__ BUF ;


 int AdjustBufSize (TYPE_1__*,scalar_t__) ;
 int Copy (int *,void*,scalar_t__) ;
 int KS_INC (int ) ;
 int KS_WRITE_BUF_COUNT ;

void WriteBuf(BUF *b, void *buf, UINT size)
{
 UINT new_size;

 if (b == ((void*)0) || buf == ((void*)0) || size == 0)
 {
  return;
 }

 new_size = b->Current + size;
 if (new_size > b->Size)
 {

  AdjustBufSize(b, new_size);
 }
 if (b->Buf != ((void*)0))
 {
  Copy((UCHAR *)b->Buf + b->Current, buf, size);
 }
 b->Current += size;
 b->Size = new_size;


 KS_INC(KS_WRITE_BUF_COUNT);
}
