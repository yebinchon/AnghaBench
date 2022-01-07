
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* slots; } ;
struct TYPE_4__ {int attenuation; int envelope; } ;
struct TYPE_5__ {TYPE_1__ state; } ;


 TYPE_3__ new_scsp ;

void scsp_debug_get_envelope(int chan, int * env, int * state)
{
   *env = new_scsp.slots[chan].state.attenuation;
   *state = new_scsp.slots[chan].state.envelope;
}
