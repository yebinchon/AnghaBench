
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int lr; int sp; int pc; int* r; int cpsr; } ;
typedef TYPE_1__ arm_thread_state32_t ;
typedef int arm_saved_state_t ;


 int assert (int ) ;
 int get_saved_state_cpsr (int const*) ;
 scalar_t__ get_saved_state_lr (int const*) ;
 scalar_t__ get_saved_state_pc (int const*) ;
 scalar_t__ get_saved_state_reg (int const*,int) ;
 scalar_t__ get_saved_state_sp (int const*) ;
 int is_saved_state32 (int const*) ;

void
saved_state_to_thread_state32(const arm_saved_state_t *saved_state, arm_thread_state32_t *ts32)
{
 uint32_t i;

 assert(is_saved_state32(saved_state));

 ts32->lr = (uint32_t)get_saved_state_lr(saved_state);
 ts32->sp = (uint32_t)get_saved_state_sp(saved_state);
 ts32->pc = (uint32_t)get_saved_state_pc(saved_state);
 ts32->cpsr = get_saved_state_cpsr(saved_state);
 for (i = 0; i < 13; i++)
  ts32->r[i] = (uint32_t)get_saved_state_reg(saved_state, i);
}
