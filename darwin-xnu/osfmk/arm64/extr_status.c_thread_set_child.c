
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
struct arm_saved_state {int dummy; } ;


 struct arm_saved_state* get_user_regs (int ) ;
 int set_saved_state_reg (struct arm_saved_state*,int,unsigned long long) ;

void
thread_set_child(
   thread_t child,
   int pid)
{
 struct arm_saved_state *child_state;

 child_state = get_user_regs(child);

 set_saved_state_reg(child_state, 0, pid);
 set_saved_state_reg(child_state, 1, 1ULL);
}
