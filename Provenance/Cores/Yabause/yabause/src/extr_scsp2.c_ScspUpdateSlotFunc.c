
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ lfo_fm_shift; scalar_t__ lfo_am_shift; scalar_t__ pcm8b; int outshift_l; int outshift_r; void* audiogen; scalar_t__ ssctl; } ;
typedef TYPE_1__ SlotState ;


 void****** scsp_audiogen_func_table ;

__attribute__((used)) static void ScspUpdateSlotFunc(SlotState *slot)
{
   if (slot->ssctl)

      slot->audiogen = scsp_audiogen_func_table[0][0][0][0][0];
   else
      slot->audiogen = scsp_audiogen_func_table[slot->lfo_fm_shift >= 0]
                                               [slot->lfo_am_shift >= 0]
                                               [slot->pcm8b == 0]
                                               [slot->outshift_l != 31]
                                               [slot->outshift_r != 31];
}
