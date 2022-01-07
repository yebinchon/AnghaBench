
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_3__ {int p_listflag; } ;


 int P_LIST_REFWAIT ;
 int proc_list_lock () ;
 int proc_list_unlock () ;
 int wakeup (int *) ;

void
proc_refwake(proc_t p)
{
 proc_list_lock();
 p->p_listflag &= ~P_LIST_REFWAIT;
 wakeup(&p->p_listflag);
 proc_list_unlock();
}
