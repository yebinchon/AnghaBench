
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_12__ {int actions; } ;
struct TYPE_11__ {int request; } ;
struct TYPE_10__ {unsigned int ports_num; size_t state_transition; int state; TYPE_4__* ports; } ;
typedef TYPE_1__ MMALOMX_COMPONENT_T ;


 int MMALOMX_ACTION_NOTIFY_STATE ;
 int MMALOMX_LOCK (TYPE_1__*) ;
 int MMALOMX_UNLOCK (TYPE_1__*) ;
 int OMX_CommandStateSet ;
 int OMX_EventCmdComplete ;
 int mmalomx_callback_event_handler (TYPE_1__*,int ,int ,int ,int *) ;
 int mmalomx_commands_actions_next (TYPE_1__*) ;
 int mmalomx_commands_check_port_actions (TYPE_1__*,TYPE_4__*) ;
 TYPE_2__* state_transition_table ;

void mmalomx_commands_actions_check(MMALOMX_COMPONENT_T *component)
{
   uint32_t actions_left = 0;
   unsigned int i;

   for (i = 0; i < component->ports_num; i++)
      mmalomx_commands_check_port_actions(component, &component->ports[i]);

   MMALOMX_LOCK(component);
   for (i = 0; i < component->ports_num; i++)
      actions_left |= component->ports[i].actions;

   if (!actions_left && component->state_transition)
   {
      component->state = state_transition_table[component->state_transition].request;
      component->state_transition = 0;
      actions_left = MMALOMX_ACTION_NOTIFY_STATE;
   }
   MMALOMX_UNLOCK(component);

   if (actions_left == MMALOMX_ACTION_NOTIFY_STATE)
   {
      mmalomx_callback_event_handler(component, OMX_EventCmdComplete,
         OMX_CommandStateSet, component->state, ((void*)0));
      actions_left = 0;
   }



   if (!actions_left)
      mmalomx_commands_actions_next(component);
}
