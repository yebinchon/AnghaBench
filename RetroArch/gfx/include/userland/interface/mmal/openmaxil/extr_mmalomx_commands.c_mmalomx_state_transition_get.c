
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ state; scalar_t__ request; } ;
typedef scalar_t__ OMX_STATETYPE ;


 scalar_t__ OMX_StateMax ;
 TYPE_1__* state_transition_table ;

__attribute__((used)) static unsigned int mmalomx_state_transition_get(OMX_STATETYPE state, OMX_STATETYPE request)
{
   unsigned int i;

   for (i = 0; state_transition_table[i].state != OMX_StateMax; i++)
      if (state_transition_table[i].state == state &&
          state_transition_table[i].request == request)
         break;

   return state_transition_table[i].state != OMX_StateMax ? i : 0;
}
