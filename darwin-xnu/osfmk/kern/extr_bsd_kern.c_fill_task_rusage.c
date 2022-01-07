
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
struct task_power_info {int total_system; int total_user; int task_interrupt_wakeups; int task_platform_idle_wakeups; } ;
struct TYPE_11__ {int ri_pageins; int ri_wired_size; int ri_resident_size; int ri_phys_footprint; int ri_system_time; int ri_user_time; int ri_interrupt_wkups; int ri_pkg_idle_wkups; } ;
typedef TYPE_2__ rusage_info_current ;
typedef int ledger_amount_t ;
struct TYPE_12__ {int wired_mem; int phys_mem; int phys_footprint; } ;
struct TYPE_10__ {int pageins; int ledger; } ;


 TYPE_1__* TASK_NULL ;
 int assert (int) ;
 int ledger_get_balance (int ,int ,int *) ;
 TYPE_6__ task_ledgers ;
 int task_lock (TYPE_1__*) ;
 int task_power_info_locked (TYPE_1__*,struct task_power_info*,int *,int *) ;
 int task_unlock (TYPE_1__*) ;

int
fill_task_rusage(task_t task, rusage_info_current *ri)
{
 struct task_power_info powerinfo;

 assert(task != TASK_NULL);
 task_lock(task);

 task_power_info_locked(task, &powerinfo, ((void*)0), ((void*)0));
 ri->ri_pkg_idle_wkups = powerinfo.task_platform_idle_wakeups;
 ri->ri_interrupt_wkups = powerinfo.task_interrupt_wakeups;
 ri->ri_user_time = powerinfo.total_user;
 ri->ri_system_time = powerinfo.total_system;

 ledger_get_balance(task->ledger, task_ledgers.phys_footprint,
                    (ledger_amount_t *)&ri->ri_phys_footprint);
 ledger_get_balance(task->ledger, task_ledgers.phys_mem,
                    (ledger_amount_t *)&ri->ri_resident_size);
 ledger_get_balance(task->ledger, task_ledgers.wired_mem,
                    (ledger_amount_t *)&ri->ri_wired_size);

 ri->ri_pageins = task->pageins;

 task_unlock(task);
 return (0);
}
