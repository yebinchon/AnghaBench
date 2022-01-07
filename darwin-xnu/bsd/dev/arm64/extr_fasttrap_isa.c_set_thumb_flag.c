
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int user_addr_t ;
struct TYPE_3__ {int cpsr; } ;
typedef TYPE_1__ arm_saved_state32_t ;


 int PSR_TF ;

__attribute__((used)) static void set_thumb_flag(arm_saved_state32_t *regs32, user_addr_t pc)
{
 if (pc & 1) {
  regs32->cpsr |= PSR_TF;
 } else {
  regs32->cpsr &= ~PSR_TF;
 }
}
