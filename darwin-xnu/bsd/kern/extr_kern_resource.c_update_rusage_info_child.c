
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rusage_info_child {int ri_child_elapsed_abstime; int ri_child_pageins; int ri_child_interrupt_wkups; int ri_child_pkg_idle_wkups; int ri_child_system_time; int ri_child_user_time; } ;
struct TYPE_3__ {scalar_t__ ri_child_elapsed_abstime; scalar_t__ ri_proc_start_abstime; scalar_t__ ri_proc_exit_abstime; scalar_t__ ri_child_pageins; scalar_t__ ri_pageins; scalar_t__ ri_child_interrupt_wkups; scalar_t__ ri_interrupt_wkups; scalar_t__ ri_child_pkg_idle_wkups; scalar_t__ ri_pkg_idle_wkups; scalar_t__ ri_child_system_time; scalar_t__ ri_system_time; scalar_t__ ri_child_user_time; scalar_t__ ri_user_time; } ;
typedef TYPE_1__ rusage_info_current ;



void
update_rusage_info_child(struct rusage_info_child *ri, rusage_info_current *ri_current)
{
 ri->ri_child_user_time += (ri_current->ri_user_time +
     ri_current->ri_child_user_time);
 ri->ri_child_system_time += (ri_current->ri_system_time +
     ri_current->ri_child_system_time);
 ri->ri_child_pkg_idle_wkups += (ri_current->ri_pkg_idle_wkups +
     ri_current->ri_child_pkg_idle_wkups);
 ri->ri_child_interrupt_wkups += (ri_current->ri_interrupt_wkups +
     ri_current->ri_child_interrupt_wkups);
 ri->ri_child_pageins += (ri_current->ri_pageins +
     ri_current->ri_child_pageins);
 ri->ri_child_elapsed_abstime += ((ri_current->ri_proc_exit_abstime -
  ri_current->ri_proc_start_abstime) + ri_current->ri_child_elapsed_abstime);
}
