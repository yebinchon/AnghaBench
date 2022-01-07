
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ thread_t ;
struct entry_point_command {int cmdsize; scalar_t__ stacksize; } ;
typedef int mach_vm_offset_t ;
typedef int load_return_t ;
struct TYPE_3__ {scalar_t__ thread_count; scalar_t__ entry_point; void* unixproc; void* using_lcmain; void* needs_dynlinker; int user_stack; int is_64bit_addr; scalar_t__ user_stack_alloc_size; scalar_t__ user_stack_size; } ;
typedef TYPE_1__ load_result_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ int64_t ;


 scalar_t__ KERN_SUCCESS ;
 int LOAD_BADMACHO ;
 int LOAD_FAILURE ;
 int LOAD_SUCCESS ;
 scalar_t__ MACH_VM_MIN_ADDRESS ;
 scalar_t__ MAXSSIZ ;
 int PAGE_SIZE ;
 scalar_t__ THREAD_NULL ;
 void* TRUE ;
 scalar_t__ os_add_overflow (scalar_t__,int,scalar_t__*) ;
 scalar_t__ thread_state_initialize (scalar_t__) ;
 scalar_t__ thread_userstackdefault (int *,int ) ;

__attribute__((used)) static
load_return_t
load_main(
 struct entry_point_command *epc,
 thread_t thread,
 int64_t slide,
 load_result_t *result
)
{
 mach_vm_offset_t addr;
 kern_return_t ret;

 if (epc->cmdsize < sizeof(*epc))
  return (LOAD_BADMACHO);
 if (result->thread_count != 0) {
  return (LOAD_FAILURE);
 }

 if (thread == THREAD_NULL)
  return (LOAD_SUCCESS);





 if (epc->stacksize) {
  if (os_add_overflow(epc->stacksize, 4*PAGE_SIZE, &result->user_stack_size)) {






   return LOAD_BADMACHO;
  }
  result->user_stack_size = epc->stacksize;
  if (os_add_overflow(epc->stacksize, PAGE_SIZE, &result->user_stack_alloc_size)) {
   return LOAD_BADMACHO;
  }
 } else {
  result->user_stack_alloc_size = MAXSSIZ;
 }


 ret = thread_userstackdefault(&addr, result->is_64bit_addr);
 if (ret != KERN_SUCCESS)
  return(LOAD_FAILURE);


 result->user_stack = addr;
 result->user_stack -= slide;

 if (result->using_lcmain || result->entry_point != MACH_VM_MIN_ADDRESS) {

  return (LOAD_FAILURE);
 }


 result->needs_dynlinker = TRUE;
 result->using_lcmain = TRUE;

 ret = thread_state_initialize( thread );
 if (ret != KERN_SUCCESS) {
  return(LOAD_FAILURE);
 }

 result->unixproc = TRUE;
 result->thread_count++;

 return(LOAD_SUCCESS);
}
