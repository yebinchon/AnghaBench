
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ env_phase; int env_target; int env_step_a; int env_step; int env_counter; scalar_t__ addr_counter; } ;
typedef TYPE_1__ SlotState ;


 scalar_t__ SCSP_ENV_ATTACK ;
 int SCSP_ENV_ATTACK_END ;
 int SCSP_ENV_ATTACK_START ;
 scalar_t__ SCSP_ENV_RELEASE ;
 int ScspUpdateSlotAddress (TYPE_1__*) ;

__attribute__((used)) static void ScspKeyOn(SlotState *slot)
{
   if (slot->env_phase != SCSP_ENV_RELEASE)
      return;

   ScspUpdateSlotAddress(slot);

   slot->addr_counter = 0;
   slot->env_phase = SCSP_ENV_ATTACK;
   slot->env_counter = SCSP_ENV_ATTACK_START;
   slot->env_step = slot->env_step_a;
   slot->env_target = SCSP_ENV_ATTACK_END;
}
