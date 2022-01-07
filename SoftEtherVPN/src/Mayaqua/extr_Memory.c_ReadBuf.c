
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef void UCHAR ;
struct TYPE_3__ {scalar_t__ Current; scalar_t__ Size; int * Buf; } ;
typedef TYPE_1__ BUF ;


 int Copy (void*,void*,scalar_t__) ;
 int KS_INC (int ) ;
 int KS_READ_BUF_COUNT ;
 int Zero (void*,scalar_t__) ;

UINT ReadBuf(BUF *b, void *buf, UINT size)
{
 UINT size_read;

 if (b == ((void*)0) || size == 0)
 {
  return 0;
 }

 if (b->Buf == ((void*)0))
 {
  Zero(buf, size);
  return 0;
 }
 size_read = size;
 if ((b->Current + size) >= b->Size)
 {
  size_read = b->Size - b->Current;
  if (buf != ((void*)0))
  {
   Zero((UCHAR *)buf + size_read, size - size_read);
  }
 }

 if (buf != ((void*)0))
 {
  Copy(buf, (UCHAR *)b->Buf + b->Current, size_read);
 }

 b->Current += size_read;


 KS_INC(KS_READ_BUF_COUNT);

 return size_read;
}
