
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef scalar_t__ user_addr_t ;
typedef int uint64_t ;
struct shared_file_mapping_np {int dummy; } ;
struct proc {int p_comm; int p_pid; } ;
typedef int mappings ;


 int SHARED_REGION_TRACE_ERROR (char*) ;
 scalar_t__ VM_KERNEL_ADDRPERM (int ) ;
 int copyin (scalar_t__,struct shared_file_mapping_np*,scalar_t__) ;
 int current_thread () ;

int
shared_region_copyin_mappings(
  struct proc *p,
  user_addr_t user_mappings,
  unsigned int mappings_count,
  struct shared_file_mapping_np *mappings)
{
 int error = 0;
 vm_size_t mappings_size = 0;


 mappings_size = (vm_size_t) (mappings_count * sizeof (mappings[0]));
 error = copyin(user_mappings,
         mappings,
         mappings_size);
 if (error) {
  SHARED_REGION_TRACE_ERROR(
   ("shared_region: %p [%d(%s)] map(): "
    "copyin(0x%llx, %d) failed (error=%d)\n",
    (void *)VM_KERNEL_ADDRPERM(current_thread()),
    p->p_pid, p->p_comm,
    (uint64_t)user_mappings, mappings_count, error));
 }
 return error;
}
