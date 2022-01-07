
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dl; int rr; int d2r; int d1r; int ar; } ;
struct TYPE_3__ {int envelope_steps_taken; int attenuation; scalar_t__ envelope; int sample_counter; } ;
struct Slot {TYPE_2__ regs; TYPE_1__ state; } ;


 scalar_t__ ATTACK ;
 scalar_t__ DECAY1 ;
 scalar_t__ DECAY2 ;
 scalar_t__ RELEASE ;
 int** attack_rate_table ;
 int change_envelope_state (struct Slot*,scalar_t__) ;
 int do_decay (struct Slot*,int ) ;
 int get_rate (struct Slot*,int ) ;
 int need_envelope_step (int,int ,struct Slot*) ;

void op4(struct Slot * slot)
{
   int sample_mod_4 = slot->state.envelope_steps_taken & 3;

   if (slot->state.attenuation >= 0x3bf)
      return;

   if (slot->state.envelope == ATTACK)
   {
      int rate = get_rate(slot, slot->regs.ar);
      int need_step = need_envelope_step(rate, slot->state.sample_counter, slot);

      if (need_step)
      {
         int attack_rate = 0;

         if (rate <= 0x30)
            attack_rate = attack_rate_table[0][sample_mod_4];
         else
            attack_rate = attack_rate_table[rate - 0x30][sample_mod_4];

         slot->state.attenuation -= ((slot->state.attenuation >> attack_rate)) + 1;

         if (slot->state.attenuation == 0)
            change_envelope_state(slot, DECAY1);
      }
   }
   else if (slot->state.envelope == DECAY1)
   {
      do_decay(slot,slot->regs.d1r);

      if ((slot->state.attenuation >> 5) >= slot->regs.dl)
         change_envelope_state(slot, DECAY2);
   }
   else if (slot->state.envelope == DECAY2)
      do_decay(slot, slot->regs.d2r);
   else if (slot->state.envelope == RELEASE)
      do_decay(slot, slot->regs.rr);
}
