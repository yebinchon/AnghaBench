
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int thread_t ;
typedef int thread_state_t ;
typedef int mach_vm_offset_t ;
typedef int load_return_t ;
struct TYPE_3__ {int is_64bit_data; } ;
typedef TYPE_1__ load_result_t ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_SUCCESS ;
 int LOAD_BADMACHO ;
 int LOAD_FAILURE ;
 int LOAD_SUCCESS ;
 int UINT32_MAX ;
 scalar_t__ thread_userstack (int ,int,int ,int,int *,int*,int ) ;

__attribute__((used)) static
load_return_t
load_threadstack(
 thread_t thread,
 uint32_t *ts,
 uint32_t total_size,
 mach_vm_offset_t *user_stack,
 int *customstack,
 load_result_t *result
)
{
 kern_return_t ret;
 uint32_t size;
 int flavor;
 uint32_t stack_size;

 while (total_size > 0) {
  flavor = *ts++;
  size = *ts++;
  if (UINT32_MAX-2 < size ||
      UINT32_MAX/sizeof(uint32_t) < size+2)
   return (LOAD_BADMACHO);
  stack_size = (size+2)*sizeof(uint32_t);
  if (stack_size > total_size)
   return(LOAD_BADMACHO);
  total_size -= stack_size;






  ret = thread_userstack(thread, flavor, (thread_state_t)ts, size, user_stack, customstack, result->is_64bit_data);
  if (ret != KERN_SUCCESS) {
   return(LOAD_FAILURE);
  }
  ts += size;
 }
 return(LOAD_SUCCESS);
}
