
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef void* register_t ;
struct TYPE_3__ {void** x; void* sp; void* lr; void* fp; } ;
typedef TYPE_1__ arm_saved_state64_t ;



__attribute__((used)) static void
set_saved_state64_regno(arm_saved_state64_t *regs64, uint32_t regno, int use_xzr, register_t value)
{

 switch (regno) {
  case 29:
   regs64->fp = value;
   break;
  case 30:
   regs64->lr = value;
   break;
  case 31:
   if (!use_xzr) {
    regs64->sp = value;
   }
   break;
  default:
   regs64->x[regno] = value;
   break;
 }
}
