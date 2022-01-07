
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
typedef int pid_t ;
struct TYPE_6__ {int member_2; int member_1; int member_0; } ;
typedef TYPE_2__ memorystatus_freeze_entry_t ;
typedef int data ;
typedef int boolean_t ;
struct TYPE_5__ {int p_memstat_state; int p_pid; int p_memstat_thaw_count; } ;


 int FALSE ;
 int P_MEMSTAT_FROZEN ;
 int P_MEMSTAT_REFREEZE_ELIGIBLE ;
 int P_MEMSTAT_SUSPENDED ;
 int kMemorystatusFreezeNote ;
 int memorystatus_refreeze_eligible_count ;
 int memorystatus_send_note (int ,TYPE_2__*,int) ;
 int memorystatus_suspended_count ;
 int memorystatus_thaw_count ;
 int proc_list_lock () ;
 int proc_list_unlock () ;

void
memorystatus_on_resume(proc_t p)
{





 proc_list_lock();
 p->p_memstat_state &= ~P_MEMSTAT_SUSPENDED;

 proc_list_unlock();







}
