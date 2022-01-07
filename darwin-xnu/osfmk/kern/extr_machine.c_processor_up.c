
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int spl_t ;
typedef TYPE_1__* processor_t ;
typedef TYPE_2__* processor_set_t ;
struct TYPE_10__ {int online_processor_count; } ;
struct TYPE_9__ {int cpu_id; TYPE_2__* processor_set; } ;


 int PROCESSOR_RUNNING ;
 int TRUE ;
 int commpage_update_active_cpus () ;
 int dtrace_cpu_state_changed_hook (int ,int ) ;
 int hw_atomic_add (int *,int) ;
 int init_ast_check (TYPE_1__*) ;
 int ml_cpu_up () ;
 int processor_avail_count ;
 int pset_lock (TYPE_2__*) ;
 int pset_unlock (TYPE_2__*) ;
 int pset_update_processor_state (TYPE_2__*,TYPE_1__*,int ) ;
 int splsched () ;
 int splx (int ) ;
 int stub1 (int ,int ) ;

void
processor_up(
 processor_t processor)
{
 processor_set_t pset;
 spl_t s;

 s = splsched();
 init_ast_check(processor);
 pset = processor->processor_set;
 pset_lock(pset);
 ++pset->online_processor_count;
 pset_update_processor_state(pset, processor, PROCESSOR_RUNNING);
 (void)hw_atomic_add(&processor_avail_count, 1);
 commpage_update_active_cpus();
 pset_unlock(pset);
 ml_cpu_up();
 splx(s);





}
