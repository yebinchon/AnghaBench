
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_3__ {int size; int pos; int memsize; int total_write_size; scalar_t__ p; } ;
typedef TYPE_1__ FIFO ;


 int Copy (int *,void*,int) ;
 int FIFO_INIT_MEM_SIZE ;
 int KS_INC (int ) ;
 int KS_WRITE_FIFO_COUNT ;
 int MAX (int,int ) ;
 scalar_t__ ReAlloc (scalar_t__,int) ;

void WriteFifo(FIFO *f, void *p, UINT size)
{
 UINT i, need_size;
 bool realloc_flag;

 if (f == ((void*)0) || size == 0)
 {
  return;
 }

 i = f->size;
 f->size += size;
 need_size = f->pos + f->size;
 realloc_flag = 0;


 while (need_size > f->memsize)
 {
  f->memsize = MAX(f->memsize, FIFO_INIT_MEM_SIZE) * 3;
  realloc_flag = 1;
 }

 if (realloc_flag)
 {
  f->p = ReAlloc(f->p, f->memsize);
 }


 if (p != ((void*)0))
 {
  Copy((UCHAR *)f->p + f->pos + i, p, size);
 }

 f->total_write_size += (UINT64)size;


 KS_INC(KS_WRITE_FIFO_COUNT);
}
