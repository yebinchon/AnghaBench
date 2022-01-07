
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fixed; int p; int memsize; scalar_t__ pos; scalar_t__ size; int * ref; int * lock; } ;
typedef TYPE_1__ FIFO ;


 int FIFO_INIT_MEM_SIZE ;
 int KS_INC (int ) ;
 int KS_NEWFIFO_COUNT ;
 int Malloc (int ) ;
 int * NewLock () ;
 int * NewRef () ;
 TYPE_1__* ZeroMalloc (int) ;

FIFO *NewFifoEx2(bool fast, bool fixed)
{
 FIFO *f;


 f = ZeroMalloc(sizeof(FIFO));

 if (fast == 0)
 {
  f->lock = NewLock();
  f->ref = NewRef();
 }
 else
 {
  f->lock = ((void*)0);
  f->ref = ((void*)0);
 }

 f->size = f->pos = 0;
 f->memsize = FIFO_INIT_MEM_SIZE;
 f->p = Malloc(FIFO_INIT_MEM_SIZE);
 f->fixed = 0;


 KS_INC(KS_NEWFIFO_COUNT);

 return f;
}
