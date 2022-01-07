
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_6__ {scalar_t__ p_refcount; int p_listflag; } ;


 scalar_t__ FALSE ;
 int P_LIST_DEAD ;
 int P_LIST_DRAIN ;
 int P_LIST_DRAINWAIT ;
 int P_LIST_REFWAIT ;
 scalar_t__ TRUE ;
 TYPE_1__* initproc ;
 int msleep (scalar_t__*,int ,int ,char*,int ) ;
 int proc_list_lock () ;
 int proc_list_mlock ;
 int proc_list_unlock () ;
 int record_procref (TYPE_1__*,int) ;

proc_t
proc_refdrain_with_refwait(proc_t p, boolean_t get_ref_and_allow_wait)
{
 boolean_t initexec = FALSE;
 proc_list_lock();

 p->p_listflag |= P_LIST_DRAIN;
 if (get_ref_and_allow_wait) {






  p->p_listflag |= P_LIST_REFWAIT;
  if (p == initproc) {
   initexec = TRUE;
  }
 }


 while (p->p_refcount && !initexec) {
  p->p_listflag |= P_LIST_DRAINWAIT;
  msleep(&p->p_refcount, proc_list_mlock, 0, "proc_refdrain", 0) ;
 }

 p->p_listflag &= ~P_LIST_DRAIN;
 if (!get_ref_and_allow_wait) {
  p->p_listflag |= P_LIST_DEAD;
 } else {

  p->p_refcount++;
  record_procref(p, 1);
 }

 proc_list_unlock();

 if (get_ref_and_allow_wait) {
  return (p);
 }
 return ((void*)0);
}
