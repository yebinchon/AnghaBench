
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int envelope_steps_taken; int attenuation; int sample_counter; } ;
struct Slot {TYPE_1__ state; } ;


 int** decay_rate_table ;
 int get_rate (struct Slot*,int) ;
 scalar_t__ need_envelope_step (int,int ,struct Slot*) ;

void do_decay(struct Slot * slot, int rate_in)
{
   int rate = get_rate(slot, rate_in);
   int sample_mod_4 = slot->state.envelope_steps_taken & 3;
   int decay_rate;

   if (rate <= 0x30)
      decay_rate = decay_rate_table[0][sample_mod_4];
   else
      decay_rate = decay_rate_table[rate - 0x30][sample_mod_4];

   if (need_envelope_step(rate, slot->state.sample_counter, slot))
   {
      if (slot->state.attenuation < 0x3bf)
         slot->state.attenuation += decay_rate;
   }
}
