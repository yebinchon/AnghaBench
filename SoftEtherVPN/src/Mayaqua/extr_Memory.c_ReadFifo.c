
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_4__ {scalar_t__ size; int pos; int fixed; int total_read_size; scalar_t__ p; } ;
typedef TYPE_1__ FIFO ;


 int Copy (void*,int *,scalar_t__) ;
 int KS_INC (int ) ;
 int KS_READ_FIFO_COUNT ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 int ShrinkFifoMemory (TYPE_1__*) ;

UINT ReadFifo(FIFO *f, void *p, UINT size)
{
 UINT read_size;

 if (f == ((void*)0) || size == 0)
 {
  return 0;
 }

 read_size = MIN(size, f->size);
 if (read_size == 0)
 {
  return 0;
 }
 if (p != ((void*)0))
 {
  Copy(p, (UCHAR *)f->p + f->pos, read_size);
 }
 f->pos += read_size;
 f->size -= read_size;

 f->total_read_size += (UINT64)read_size;

 if (f->fixed == 0)
 {
  if (f->size == 0)
  {
   f->pos = 0;
  }
 }

 ShrinkFifoMemory(f);


 KS_INC(KS_READ_FIFO_COUNT);

 return read_size;
}
