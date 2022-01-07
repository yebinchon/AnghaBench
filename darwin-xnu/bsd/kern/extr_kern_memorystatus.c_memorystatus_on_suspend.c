
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* proc_t ;
struct TYPE_3__ {int p_memstat_state; int task; } ;


 int P_MEMSTAT_SUSPENDED ;
 int memorystatus_get_task_page_counts (int ,int *,int *,int *) ;
 int memorystatus_suspended_count ;
 int proc_list_lock () ;
 int proc_list_unlock () ;

void
memorystatus_on_suspend(proc_t p)
{




 proc_list_lock();



 p->p_memstat_state |= P_MEMSTAT_SUSPENDED;
 proc_list_unlock();
}
