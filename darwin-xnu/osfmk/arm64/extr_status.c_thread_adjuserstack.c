
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int thread_t ;
struct arm_saved_state {int dummy; } ;


 int get_saved_state_sp (struct arm_saved_state*) ;
 struct arm_saved_state* get_user_regs (int ) ;
 int set_saved_state_sp (struct arm_saved_state*,int) ;

uint64_t
thread_adjuserstack(thread_t thread, int adjust)
{
 struct arm_saved_state *sv;
 uint64_t sp;

 sv = get_user_regs(thread);

 sp = get_saved_state_sp(sv);
 sp += adjust;
 set_saved_state_sp(sv, sp);;

 return sp;
}
