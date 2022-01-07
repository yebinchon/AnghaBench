
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_3__ {int p_listflag; int p_stat; } ;


 int P_LIST_WAITING ;
 int proc_list_lock () ;
 int proc_list_unlock () ;
 int wakeup (int *) ;

void
proc_drop_zombref(proc_t p)
{
 proc_list_lock();
 if ((p->p_listflag & P_LIST_WAITING) == P_LIST_WAITING) {
  p->p_listflag &= ~P_LIST_WAITING;
  wakeup(&p->p_stat);
 }
 proc_list_unlock();
}
