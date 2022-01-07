
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int ftt_instr; scalar_t__ ftt_thumb; } ;
typedef TYPE_1__ fasttrap_tracepoint_t ;
struct TYPE_6__ {int cpsr; } ;
typedef TYPE_2__ arm_saved_state32_t ;


 int ARM_CONDCODE (int ) ;
 int GETITSTATE (int ) ;
 int ISLASTINIT (int) ;
 int assert (int ) ;

__attribute__((used)) static int
fasttrap_get_condition_code(arm_saved_state32_t *regs32, fasttrap_tracepoint_t *tp)
{

 int condition_code = 0xE;
 if (tp->ftt_thumb) {
  uint32_t itstate = GETITSTATE(regs32->cpsr);
  if (itstate != 0) {

   assert(ISLASTINIT(itstate));
   condition_code = itstate >> 4;
  }
 } else {
  condition_code = ARM_CONDCODE(tp->ftt_instr);
 }

 return condition_code;
}
