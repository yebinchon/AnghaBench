
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ env_phase; void* env_counter; void* env_target; int env_step_r; int env_step; } ;
typedef TYPE_1__ SlotState ;


 scalar_t__ SCSP_ENV_ATTACK ;
 void* SCSP_ENV_DECAY_END ;
 scalar_t__ SCSP_ENV_RELEASE ;

__attribute__((used)) static void ScspKeyOff(SlotState *slot)
{
   if (slot->env_phase == SCSP_ENV_RELEASE)
      return;


   if (slot->env_phase == SCSP_ENV_ATTACK)
      slot->env_counter = SCSP_ENV_DECAY_END - slot->env_counter;

   slot->env_phase = SCSP_ENV_RELEASE;
   slot->env_step = slot->env_step_r;
   slot->env_target = SCSP_ENV_DECAY_END;
}
