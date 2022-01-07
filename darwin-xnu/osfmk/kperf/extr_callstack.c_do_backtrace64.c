
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ rip; } ;
struct TYPE_7__ {scalar_t__ rbp; TYPE_1__ isf; } ;
typedef TYPE_2__ x86_saved_state64_t ;
typedef int vm_offset_t ;
typedef scalar_t__ uint64_t ;
typedef TYPE_3__* thread_t ;
typedef int task_t ;
typedef scalar_t__ mach_msg_type_number_t ;
typedef int kern_return_t ;
typedef int boolean_t ;
struct TYPE_8__ {int kernel_stack; } ;


 int KERN_FAILURE ;
 int KERN_RESOURCE_SHORTAGE ;
 int KERN_SUCCESS ;
 scalar_t__ VALID_STACK_ADDRESS64 (int ,scalar_t__,scalar_t__,scalar_t__) ;
 int chudxnu_kern_read (scalar_t__*,int ,int) ;
 int chudxnu_task_read (int ,scalar_t__*,scalar_t__,int) ;
 scalar_t__ chudxnu_vm_unslide (scalar_t__,int ) ;
 scalar_t__ kernel_stack_size ;

__attribute__((used)) static kern_return_t do_backtrace64(
 task_t task,
 thread_t thread,
 x86_saved_state64_t *regs,
 uint64_t *frames,
 mach_msg_type_number_t *start_idx,
 mach_msg_type_number_t max_idx,
 boolean_t supervisor)
{
 uint64_t currPC = regs->isf.rip;
 uint64_t currFP = regs->rbp;
 uint64_t prevPC = 0ULL;
 uint64_t prevFP = 0ULL;
 uint64_t kernStackMin = (uint64_t)thread->kernel_stack;
    uint64_t kernStackMax = (uint64_t)kernStackMin + kernel_stack_size;
 mach_msg_type_number_t ct = *start_idx;
 kern_return_t kr = KERN_FAILURE;

 if(*start_idx >= max_idx)
  return KERN_RESOURCE_SHORTAGE;

 frames[ct++] = chudxnu_vm_unslide(currPC, supervisor);


 while(VALID_STACK_ADDRESS64(supervisor, currFP, kernStackMin, kernStackMax)) {

  uint64_t caller = currFP + sizeof(uint64_t);

        if(!currFP) {
            currPC = 0;
            break;
        }

        if(ct >= max_idx) {
   *start_idx = ct;
            return KERN_RESOURCE_SHORTAGE;
        }


  if(supervisor) {
   kr = chudxnu_kern_read(&currPC, (vm_offset_t)caller, sizeof(uint64_t));
  } else {
   kr = chudxnu_task_read(task, &currPC, caller, sizeof(uint64_t));
  }

  if(kr != KERN_SUCCESS) {
   currPC = 0ULL;
   break;
  }





        prevFP = 0;
  if(supervisor) {
   kr = chudxnu_kern_read(&prevFP, (vm_offset_t)currFP, sizeof(uint64_t));
  } else {
   kr = chudxnu_task_read(task, &prevFP, currFP, sizeof(uint64_t));
  }

        if(VALID_STACK_ADDRESS64(supervisor, prevFP, kernStackMin, kernStackMax)) {
            frames[ct++] = chudxnu_vm_unslide(currPC, supervisor);
            prevPC = currPC;
        }
        if(prevFP < currFP) {
            break;
        } else {
            currFP = prevFP;
        }
 }

 *start_idx = ct;
 return KERN_SUCCESS;
}
