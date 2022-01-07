
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct TYPE_4__ {int (* interrupt_handler ) (int ,int ,int ,int ) ;int interrupt_source; int interrupt_nub; int interrupt_refCon; int interrupt_target; } ;
typedef TYPE_1__ cpu_data_t ;
typedef int arm_saved_state_t ;
struct TYPE_5__ {int* index_ptr; int* buffer; } ;


 int DBG_INTR_TYPE_OTHER ;
 size_t ENTROPY_BUFFER_SIZE ;
 TYPE_3__ EntropyData ;
 int __ror (int,int) ;
 TYPE_1__* getCpuDatap () ;
 int get_preemption_level () ;
 scalar_t__ ml_get_timebase () ;
 int panic (char*,int (*) (int ,int ,int ,int ),int,int) ;
 int sleh_interrupt_handler_epilogue () ;
 int sleh_interrupt_handler_prologue (int *,int ) ;
 int stub1 (int ,int ,int ,int ) ;

void
sleh_irq(arm_saved_state_t *state)
{
 uint64_t timestamp = 0;
 uint32_t old_entropy_data = 0;
 uint32_t * old_entropy_data_ptr = ((void*)0);
 uint32_t * new_entropy_data_ptr = ((void*)0);
 cpu_data_t * cdp = getCpuDatap();




 sleh_interrupt_handler_prologue(state, DBG_INTR_TYPE_OTHER);


 cdp->interrupt_handler(cdp->interrupt_target,
                        cdp->interrupt_refCon,
                        cdp->interrupt_nub,
                        cdp->interrupt_source);


 timestamp = ml_get_timebase();
 old_entropy_data_ptr = EntropyData.index_ptr;
 new_entropy_data_ptr = old_entropy_data_ptr + 1;

 if (new_entropy_data_ptr >= &EntropyData.buffer[ENTROPY_BUFFER_SIZE]) {
  new_entropy_data_ptr = EntropyData.buffer;
 }

 EntropyData.index_ptr = new_entropy_data_ptr;


 old_entropy_data = *old_entropy_data_ptr;
 *old_entropy_data_ptr = (uint32_t)timestamp ^ __ror(old_entropy_data, 9);

 sleh_interrupt_handler_epilogue();




}
