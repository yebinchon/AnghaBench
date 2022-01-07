
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_address_t ;
typedef int thread_t ;
typedef int mach_exception_data_type_t ;
typedef int arm_saved_state_t ;


 int EXC_BAD_ACCESS ;
 int KERN_INVALID_ADDRESS ;
 int exception_triage (int ,int *,int) ;
 int * get_user_regs (int ) ;
 int set_saved_state_far (int *,int ) ;

__attribute__((used)) static void
cache_trap_error(thread_t thread, vm_map_address_t fault_addr)
{
 mach_exception_data_type_t exc_data[2];
 arm_saved_state_t *regs = get_user_regs(thread);

 set_saved_state_far(regs, fault_addr);

 exc_data[0] = KERN_INVALID_ADDRESS;
 exc_data[1] = fault_addr;

 exception_triage(EXC_BAD_ACCESS, exc_data, 2);
}
