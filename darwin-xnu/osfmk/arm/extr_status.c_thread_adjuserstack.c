
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int thread_t ;
struct arm_saved_state {int sp; } ;


 struct arm_saved_state* get_user_regs (int ) ;

uint64_t
thread_adjuserstack(thread_t thread, int adjust)
{
 struct arm_saved_state *sv;

 sv = get_user_regs(thread);

 sv->sp += adjust;

 return sv->sp;
}
