
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int cpu_decrementer; } ;
typedef TYPE_1__ cpu_data_t ;
typedef int arm_saved_state_t ;


 unsigned int DBG_INTR_TYPE_PMI ;
 unsigned int DBG_INTR_TYPE_TIMER ;
 unsigned int DBG_INTR_TYPE_UNKNOWN ;
 int TRUE ;
 TYPE_1__* getCpuDatap () ;
 int get_preemption_level () ;
 scalar_t__ ml_get_timer_pending () ;
 int mt_fiq (TYPE_1__*,int ,int ) ;
 scalar_t__ mt_pmi_pending (int *,int *) ;
 int panic (char*,unsigned int,int,int) ;
 int rtclock_intr (int ) ;
 int sleh_interrupt_handler_epilogue () ;
 int sleh_interrupt_handler_prologue (int *,unsigned int) ;

void
sleh_fiq(arm_saved_state_t *state)
{
 unsigned int type = DBG_INTR_TYPE_UNKNOWN;
 if (ml_get_timer_pending()) {
  type = DBG_INTR_TYPE_TIMER;
 }

 sleh_interrupt_handler_prologue(state, type);






 {





  cpu_data_t *cdp = getCpuDatap();

  cdp->cpu_decrementer = -1;






  rtclock_intr(TRUE);
 }

 sleh_interrupt_handler_epilogue();




}
