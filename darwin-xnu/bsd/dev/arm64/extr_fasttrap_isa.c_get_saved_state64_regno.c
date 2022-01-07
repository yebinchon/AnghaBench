
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_3__ {int * x; int sp; int lr; int fp; } ;
typedef TYPE_1__ arm_saved_state64_t ;



__attribute__((used)) static uint64_t
get_saved_state64_regno(arm_saved_state64_t *regs64, uint32_t regno, int use_xzr)
{

 switch (regno) {
  case 29:
   return regs64->fp;
  case 30:
   return regs64->lr;
  case 31:

   if (use_xzr) {
    return 0;
   } else {
    return regs64->sp;
   }
  default:
   return regs64->x[regno];
 }
}
