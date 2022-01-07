
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_8__ {int p_listflag; scalar_t__ p_stat; int p_refcount; } ;


 TYPE_1__* PROC_NULL ;
 int P_LIST_DEAD ;
 int P_LIST_DRAIN ;
 int P_LIST_DRAINWAIT ;
 int P_LIST_EXITED ;
 int P_LIST_INCREATE ;
 int P_LIST_REFWAIT ;
 scalar_t__ SZOMB ;
 int msleep (int*,int ,int ,char*,int ) ;
 TYPE_1__* pfind_locked (int) ;
 int proc_list_mlock ;
 int proc_pid (TYPE_1__*) ;
 int record_procref (TYPE_1__*,int) ;
 scalar_t__ uthread_needs_to_wait_in_proc_refwait () ;

proc_t
proc_ref_locked(proc_t p)
{
 proc_t p1 = p;
 int pid = proc_pid(p);

retry:




 if ((p == PROC_NULL) || (p1 != p) || ((p->p_listflag & P_LIST_INCREATE) != 0))
   return (PROC_NULL);
 if ((p->p_stat != SZOMB) &&
     ((p->p_listflag & P_LIST_EXITED) == 0) &&
     ((p->p_listflag & P_LIST_DEAD) == 0) &&
     (((p->p_listflag & (P_LIST_DRAIN | P_LIST_DRAINWAIT)) == 0) ||
      ((p->p_listflag & P_LIST_REFWAIT) != 0))) {
  if ((p->p_listflag & P_LIST_REFWAIT) != 0 && uthread_needs_to_wait_in_proc_refwait()) {
   msleep(&p->p_listflag, proc_list_mlock, 0, "proc_refwait", 0) ;




   p = pfind_locked(pid);
   goto retry;
  }
  p->p_refcount++;
  record_procref(p, 1);
 }
 else
  p1 = PROC_NULL;

 return(p1);
}
