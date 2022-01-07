
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct rusage_info_child {int ri_child_elapsed_abstime; int ri_child_pageins; int ri_child_interrupt_wkups; int ri_child_pkg_idle_wkups; int ri_child_system_time; int ri_child_user_time; } ;
struct TYPE_16__ {int ri_proc_start_abstime; int ri_uuid; int ri_child_elapsed_abstime; int ri_child_pageins; int ri_child_interrupt_wkups; int ri_child_pkg_idle_wkups; int ri_child_system_time; int ri_child_user_time; int ri_interval_max_phys_footprint; int ri_lifetime_max_phys_footprint; int ri_logical_writes; } ;
typedef TYPE_2__ rusage_info_current ;
typedef TYPE_3__* proc_t ;
struct TYPE_17__ {TYPE_1__* p_stats; int task; } ;
struct TYPE_15__ {int ps_start; struct rusage_info_child ri_child; } ;


 int FALSE ;





 int assert (int ) ;
 int fill_task_billed_usage (int ,TYPE_2__*) ;
 int fill_task_io_rusage (int ,TYPE_2__*) ;
 int fill_task_monotonic_rusage (int ,TYPE_2__*) ;
 int fill_task_qos_rusage (int ,TYPE_2__*) ;
 int fill_task_rusage (int ,TYPE_2__*) ;
 int get_task_logical_writes (int ) ;
 int get_task_phys_footprint_interval_max (int ,int ) ;
 int get_task_phys_footprint_lifetime_max (int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int proc_getexecutableuuid (TYPE_3__*,unsigned char*,int) ;
 int proc_lock (TYPE_3__*) ;
 int proc_unlock (TYPE_3__*) ;

void
gather_rusage_info(proc_t p, rusage_info_current *ru, int flavor)
{
 struct rusage_info_child *ri_child;

 assert(p->p_stats != ((void*)0));
 memset(ru, 0, sizeof(*ru));
 switch(flavor) {
 case 128:
  ru->ri_logical_writes = get_task_logical_writes(p->task);
  ru->ri_lifetime_max_phys_footprint = get_task_phys_footprint_lifetime_max(p->task);



  fill_task_monotonic_rusage(p->task, ru);


 case 129:
  fill_task_qos_rusage(p->task, ru);
  fill_task_billed_usage(p->task, ru);


 case 130:
  fill_task_io_rusage(p->task, ru);


 case 131:



  proc_lock(p);

  ri_child = &(p->p_stats->ri_child);
  ru->ri_child_user_time = ri_child->ri_child_user_time;
  ru->ri_child_system_time = ri_child->ri_child_system_time;
  ru->ri_child_pkg_idle_wkups = ri_child->ri_child_pkg_idle_wkups;
  ru->ri_child_interrupt_wkups = ri_child->ri_child_interrupt_wkups;
  ru->ri_child_pageins = ri_child->ri_child_pageins;
  ru->ri_child_elapsed_abstime = ri_child->ri_child_elapsed_abstime;

  proc_unlock(p);


 case 132:
  proc_getexecutableuuid(p, (unsigned char *)&ru->ri_uuid, sizeof (ru->ri_uuid));
  fill_task_rusage(p->task, ru);
  ru->ri_proc_start_abstime = p->p_stats->ps_start;
 }
}
