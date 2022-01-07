
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int envelope; scalar_t__ step_count; } ;
struct Slot {TYPE_1__ state; } ;
typedef enum EnvelopeStates { ____Placeholder_EnvelopeStates } EnvelopeStates ;



void change_envelope_state(struct Slot * slot, enum EnvelopeStates new_state)
{
   slot->state.envelope = new_state;
   slot->state.step_count = 0;
}
