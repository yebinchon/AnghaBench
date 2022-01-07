
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int thread_t ;
typedef int thread_state_t ;
typedef int mach_vm_offset_t ;
typedef int load_return_t ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_SUCCESS ;
 int LOAD_BADMACHO ;
 int LOAD_FAILURE ;
 int LOAD_SUCCESS ;
 int MACH_VM_MIN_ADDRESS ;
 int UINT32_MAX ;
 scalar_t__ thread_entrypoint (int ,int,int ,int,int *) ;

__attribute__((used)) static
load_return_t
load_threadentry(
 thread_t thread,
 uint32_t *ts,
 uint32_t total_size,
 mach_vm_offset_t *entry_point
)
{
 kern_return_t ret;
 uint32_t size;
 int flavor;
 uint32_t entry_size;




 *entry_point = MACH_VM_MIN_ADDRESS;
 while (total_size > 0) {
  flavor = *ts++;
  size = *ts++;
  if (UINT32_MAX-2 < size ||
      UINT32_MAX/sizeof(uint32_t) < size+2)
   return (LOAD_BADMACHO);
  entry_size = (size+2)*sizeof(uint32_t);
  if (entry_size > total_size)
   return(LOAD_BADMACHO);
  total_size -= entry_size;





  ret = thread_entrypoint(thread, flavor, (thread_state_t)ts, size, entry_point);
  if (ret != KERN_SUCCESS) {
   return(LOAD_FAILURE);
  }
  ts += size;
 }
 return(LOAD_SUCCESS);
}
