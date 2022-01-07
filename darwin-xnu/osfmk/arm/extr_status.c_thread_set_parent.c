
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
struct arm_saved_state {int* r; } ;


 struct arm_saved_state* get_user_regs (int ) ;

void
thread_set_parent(
    thread_t parent,
    int pid)
{
 struct arm_saved_state *parent_state;

 parent_state = get_user_regs(parent);

 parent_state->r[0] = pid;
 parent_state->r[1] = 0;
}
