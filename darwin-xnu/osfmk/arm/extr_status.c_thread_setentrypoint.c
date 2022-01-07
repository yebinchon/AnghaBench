
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
struct arm_saved_state {int pc; } ;
typedef int mach_vm_offset_t ;


 struct arm_saved_state* get_user_regs (int ) ;
 int thread_setentrypoint_kprintf (char*,int ) ;

void
thread_setentrypoint(thread_t thread, mach_vm_offset_t entry)
{
 struct arm_saved_state *sv;




 sv = get_user_regs(thread);

 sv->pc = entry;

                                                   ;

 return;
}
