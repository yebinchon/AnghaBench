
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
struct arm_saved_state {int dummy; } ;
typedef int mach_vm_offset_t ;


 struct arm_saved_state* get_user_regs (int ) ;
 int set_saved_state_pc (struct arm_saved_state*,int ) ;

void
thread_setentrypoint(thread_t thread, mach_vm_offset_t entry)
{
 struct arm_saved_state *sv;

 sv = get_user_regs(thread);

 set_saved_state_pc(sv, entry);

 return;
}
