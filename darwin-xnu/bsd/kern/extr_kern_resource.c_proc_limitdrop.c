
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct plimit {scalar_t__ pl_refcnt; } ;
typedef TYPE_1__* proc_t ;
struct TYPE_3__ {struct plimit* p_olimit; struct plimit* p_limit; } ;


 int FREE_ZONE (struct plimit*,int,int ) ;
 int M_PLIMIT ;
 int proc_list_lock () ;
 int proc_list_unlock () ;

void
proc_limitdrop(proc_t p, int exiting)
{
 struct plimit * freelim = ((void*)0);
 struct plimit * freeoldlim = ((void*)0);

 proc_list_lock();

 if (--p->p_limit->pl_refcnt == 0) {
  freelim = p->p_limit;
  p->p_limit = ((void*)0);
 }
 if ((exiting != 0) && (p->p_olimit != ((void*)0)) && (--p->p_olimit->pl_refcnt == 0)) {
  freeoldlim = p->p_olimit;
  p->p_olimit = ((void*)0);
 }

 proc_list_unlock();
 if (freelim != ((void*)0))
  FREE_ZONE(freelim, sizeof *p->p_limit, M_PLIMIT);
 if (freeoldlim != ((void*)0))
  FREE_ZONE(freeoldlim, sizeof *p->p_olimit, M_PLIMIT);
}
