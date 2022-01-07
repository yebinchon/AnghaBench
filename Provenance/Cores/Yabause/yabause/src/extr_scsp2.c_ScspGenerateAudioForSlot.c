
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ env_counter; int (* audiogen ) (TYPE_1__*,int ) ;} ;
typedef TYPE_1__ SlotState ;


 scalar_t__ SCSP_ENV_DECAY_END ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static void ScspGenerateAudioForSlot(SlotState *slot, u32 samples)
{
   if (slot->env_counter >= SCSP_ENV_DECAY_END)
      return;

   (*slot->audiogen)(slot, samples);
}
