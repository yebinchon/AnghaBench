
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* p; int lock; } ;
typedef TYPE_1__ FIFO ;


 int DeleteLock (int ) ;
 int Free (TYPE_1__*) ;
 int KS_FREEFIFO_COUNT ;
 int KS_INC (int ) ;

void CleanupFifo(FIFO *f)
{

 if (f == ((void*)0))
 {
  return;
 }

 DeleteLock(f->lock);
 Free(f->p);
 Free(f);


 KS_INC(KS_FREEFIFO_COUNT);
}
