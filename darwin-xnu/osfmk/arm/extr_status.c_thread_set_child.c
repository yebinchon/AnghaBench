
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint_t ;
typedef int thread_t ;
struct arm_saved_state {unsigned long long* r; } ;


 struct arm_saved_state* get_user_regs (int ) ;

void
thread_set_child(
   thread_t child,
   int pid)
{
 struct arm_saved_state *child_state;

 child_state = get_user_regs(child);

 child_state->r[0] = (uint_t) pid;
 child_state->r[1] = 1ULL;
}
