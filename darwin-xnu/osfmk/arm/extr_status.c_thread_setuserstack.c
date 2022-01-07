
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
struct arm_saved_state {int sp; } ;
typedef int mach_vm_address_t ;


 struct arm_saved_state* get_user_regs (int ) ;
 int thread_setuserstack_kprintf (char*,int ) ;

void
thread_setuserstack(thread_t thread, mach_vm_address_t user_stack)
{
 struct arm_saved_state *sv;




 sv = get_user_regs(thread);

 sv->sp = user_stack;

                                                  ;

 return;
}
