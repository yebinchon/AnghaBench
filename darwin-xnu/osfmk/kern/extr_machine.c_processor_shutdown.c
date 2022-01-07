
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int spl_t ;
typedef TYPE_1__* processor_t ;
typedef int processor_set_t ;
typedef int kern_return_t ;
struct TYPE_5__ {scalar_t__ state; int cpu_id; int processor_set; } ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 scalar_t__ PROCESSOR_DISPATCHING ;
 scalar_t__ PROCESSOR_OFF_LINE ;
 scalar_t__ PROCESSOR_SHUTDOWN ;
 scalar_t__ PROCESSOR_START ;
 int cpu_exit_wait (int ) ;
 int delay (int) ;
 int processor_doshutdown (TYPE_1__*) ;
 int pset_lock (int ) ;
 int pset_unlock (int ) ;
 int pset_update_processor_state (int ,TYPE_1__*,scalar_t__) ;
 int splsched () ;
 int splx (int ) ;

kern_return_t
processor_shutdown(
 processor_t processor)
{
 processor_set_t pset;
 spl_t s;

 s = splsched();
 pset = processor->processor_set;
 pset_lock(pset);
 if (processor->state == PROCESSOR_OFF_LINE) {



  pset_unlock(pset);
  splx(s);

  return (KERN_SUCCESS);
 }

 if (processor->state == PROCESSOR_START) {



  pset_unlock(pset);
  splx(s);

  return (KERN_FAILURE);
 }




 while (processor->state == PROCESSOR_DISPATCHING) {
  pset_unlock(pset);
  splx(s);
  delay(1);
  s = splsched();
  pset_lock(pset);
 }




 if (processor->state == PROCESSOR_SHUTDOWN) {
  pset_unlock(pset);
  splx(s);

  return (KERN_SUCCESS);
 }

 pset_update_processor_state(pset, processor, PROCESSOR_SHUTDOWN);

 pset_unlock(pset);

 processor_doshutdown(processor);
 splx(s);

 cpu_exit_wait(processor->cpu_id);

 return (KERN_SUCCESS);
}
