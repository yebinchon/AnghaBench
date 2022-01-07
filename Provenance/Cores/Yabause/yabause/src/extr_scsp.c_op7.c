
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int num; int lfo_counter; int sample_counter; int output; } ;
struct Slot {TYPE_1__ state; } ;
struct Scsp {int * sound_stack; } ;



void op7(struct Slot * slot, struct Scsp*s)
{
   u32 previous = s->sound_stack[slot->state.num + 32];
   s->sound_stack[slot->state.num + 32] = slot->state.output;
   s->sound_stack[slot->state.num] = previous;

   slot->state.sample_counter++;
   slot->state.lfo_counter++;
}
