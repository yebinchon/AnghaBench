
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ ebp; scalar_t__ eip; } ;
typedef TYPE_1__ x86_saved_state32_t ;
typedef int vm_offset_t ;
typedef scalar_t__ uint64_t ;
typedef unsigned long uint32_t ;
typedef TYPE_2__* thread_t ;
typedef int task_t ;
typedef scalar_t__ mach_msg_type_number_t ;
typedef int kern_return_t ;
struct TYPE_8__ {int prev; int caller; } ;
typedef TYPE_3__ cframe_t ;
typedef int boolean_t ;
struct TYPE_7__ {scalar_t__ kernel_stack; } ;


 int KERN_FAILURE ;
 int KERN_RESOURCE_SHORTAGE ;
 int KERN_SUCCESS ;
 scalar_t__ VALID_STACK_ADDRESS (int ,scalar_t__,scalar_t__,scalar_t__) ;
 int chudxnu_kern_read (unsigned long*,int ,int) ;
 int chudxnu_task_read (int ,unsigned long*,int ,int) ;
 scalar_t__ chudxnu_vm_unslide (scalar_t__,int ) ;
 scalar_t__ kernel_stack_size ;

__attribute__((used)) static kern_return_t do_backtrace32(
 task_t task,
 thread_t thread,
 x86_saved_state32_t *regs,
 uint64_t *frames,
 mach_msg_type_number_t *start_idx,
 mach_msg_type_number_t max_idx,
 boolean_t supervisor)
{
 uint32_t tmpWord = 0UL;
 uint64_t currPC = (uint64_t) regs->eip;
 uint64_t currFP = (uint64_t) regs->ebp;
 uint64_t prevPC = 0ULL;
 uint64_t prevFP = 0ULL;
 uint64_t kernStackMin = thread->kernel_stack;
    uint64_t kernStackMax = kernStackMin + kernel_stack_size;
 mach_msg_type_number_t ct = *start_idx;
 kern_return_t kr = KERN_FAILURE;

 if(ct >= max_idx)
  return KERN_RESOURCE_SHORTAGE;

 frames[ct++] = chudxnu_vm_unslide(currPC, supervisor);


 while(VALID_STACK_ADDRESS(supervisor, currFP, kernStackMin, kernStackMax)) {
  cframe_t *fp = (cframe_t *) (uintptr_t) currFP;

        if(!currFP) {
            currPC = 0;
            break;
        }

        if(ct >= max_idx) {
   *start_idx = ct;
            return KERN_RESOURCE_SHORTAGE;
        }


  if(supervisor) {
   kr = chudxnu_kern_read(&tmpWord, (vm_offset_t) &fp->caller, sizeof(uint32_t));
  } else {
   kr = chudxnu_task_read(task, &tmpWord, (vm_offset_t) &fp->caller, sizeof(uint32_t));
  }

  if(kr != KERN_SUCCESS) {
   currPC = 0ULL;
   break;
  }

  currPC = (uint64_t) tmpWord;





        prevFP = 0;
  if(supervisor) {
   kr = chudxnu_kern_read(&tmpWord, (vm_offset_t)&fp->prev, sizeof(uint32_t));
  } else {
   kr = chudxnu_task_read(task, &tmpWord, (vm_offset_t)&fp->prev, sizeof(uint32_t));
  }
  prevFP = (uint64_t) tmpWord;

        if(prevFP) {
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
