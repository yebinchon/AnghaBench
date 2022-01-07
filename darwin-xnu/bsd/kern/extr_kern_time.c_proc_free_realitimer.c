
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int * thread_call_t ;
typedef TYPE_2__* proc_t ;
struct TYPE_6__ {int it_interval; } ;
struct TYPE_7__ {scalar_t__ p_refcount; scalar_t__ p_ractive; int * p_rcall; TYPE_1__ p_realtimer; } ;


 int assert (int) ;
 int delay (int) ;
 int proc_spinlock (TYPE_2__*) ;
 int proc_spinunlock (TYPE_2__*) ;
 scalar_t__ thread_call_cancel (int *) ;
 int thread_call_free (int *) ;
 int timerclear (int *) ;

void
proc_free_realitimer(proc_t p)
{
 proc_spinlock(p);

 assert(p->p_rcall != ((void*)0));
 assert(p->p_refcount == 0);

 timerclear(&p->p_realtimer.it_interval);

 if (thread_call_cancel(p->p_rcall)) {
  assert(p->p_ractive > 0);
  p->p_ractive--;
 }

 while (p->p_ractive > 0) {
  proc_spinunlock(p);

  delay(1);

  proc_spinlock(p);
 }

 thread_call_t call = p->p_rcall;
 p->p_rcall = ((void*)0);

 proc_spinunlock(p);

 thread_call_free(call);
}
