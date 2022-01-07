
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_5__ {int p_listflag; int p_stat; } ;


 TYPE_1__* PROC_NULL ;
 int PWAIT ;
 int P_LIST_EXITED ;
 int P_LIST_INCREATE ;
 int P_LIST_WAITING ;
 int msleep (int *,int ,int ,char*,int ) ;
 TYPE_1__* pfind_locked (int) ;
 int proc_list_lock () ;
 int proc_list_mlock ;
 int proc_list_unlock () ;

proc_t
proc_find_zombref(int pid)
{
 proc_t p;

 proc_list_lock();

 again:
 p = pfind_locked(pid);


 if ((p == PROC_NULL)
     || ((p->p_listflag & P_LIST_INCREATE) != 0)
     || ((p->p_listflag & P_LIST_EXITED) == 0)) {

  proc_list_unlock();
  return (PROC_NULL);
 }


 if ((p->p_listflag & P_LIST_WAITING) != 0) {
  (void)msleep(&p->p_stat, proc_list_mlock, PWAIT, "waitcoll", 0);
  goto again;
 }
 p->p_listflag |= P_LIST_WAITING;

 proc_list_unlock();

 return(p);
}
