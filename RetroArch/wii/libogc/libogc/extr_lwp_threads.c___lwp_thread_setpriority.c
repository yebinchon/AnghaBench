
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_4__ {size_t cur_prio; int * ready; int priomap; } ;
typedef TYPE_1__ lwp_cntrl ;


 int __lwp_priomap_init (int *,size_t) ;
 int * _lwp_thr_ready ;
 int kprintf (char*,TYPE_1__*,size_t,int *) ;

void __lwp_thread_setpriority(lwp_cntrl *thethread,u32 prio)
{
 thethread->cur_prio = prio;
 thethread->ready = &_lwp_thr_ready[prio];
 __lwp_priomap_init(&thethread->priomap,prio);



}
