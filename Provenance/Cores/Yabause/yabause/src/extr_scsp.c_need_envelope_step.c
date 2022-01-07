
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {size_t step_count; int envelope_steps_taken; } ;
struct Slot {TYPE_1__ state; } ;


 int EFFECTIVE_RATE_END ;
 int** envelope_table ;

int need_envelope_step(int effective_rate, u32 sample_counter, struct Slot* slot)
{
   if (sample_counter == 0)
      return 0;

   if (effective_rate == 0 || effective_rate == 1)
   {
      return 0;
   }
   else if (effective_rate >= 0x30)
   {
      if ((sample_counter & 1) == 0)
      {
         slot->state.envelope_steps_taken++;
         return 1;
      }
      else
         return 0;
   }
   else
   {
      int pos = effective_rate - 2;

      int result = 0;

      int value = envelope_table[pos][slot->state.step_count];

      if (sample_counter % value == 0)
      {
         result = 1;

         slot->state.envelope_steps_taken++;
         slot->state.step_count++;

         if (envelope_table[pos][slot->state.step_count] == EFFECTIVE_RATE_END)
            slot->state.step_count = 0;
      }

      return result;
   }
   return 0;
}
