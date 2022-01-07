
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_3__ {scalar_t__ pos; int memsize; int size; void* p; scalar_t__ fixed; } ;
typedef TYPE_1__ FIFO ;


 int Copy (void*,int *,int) ;
 scalar_t__ FIFO_INIT_MEM_SIZE ;
 int Free (void*) ;
 int MAX (int,scalar_t__) ;
 void* Malloc (int) ;
 int fifo_current_realloc_mem_size ;

void ShrinkFifoMemory(FIFO *f)
{

 if (f == ((void*)0))
 {
  return;
 }

 if (f->fixed)
 {
  return;
 }


 if (f->pos >= FIFO_INIT_MEM_SIZE &&
  f->memsize >= fifo_current_realloc_mem_size &&
  (f->memsize / 2) > f->size)
 {
  void *new_p;
  UINT new_size;

  new_size = MAX(f->memsize / 2, FIFO_INIT_MEM_SIZE);
  new_p = Malloc(new_size);
  Copy(new_p, (UCHAR *)f->p + f->pos, f->size);

  Free(f->p);

  f->memsize = new_size;
  f->p = new_p;
  f->pos = 0;
 }
}
