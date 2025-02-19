
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int actions; int enabled; } ;
struct TYPE_12__ {int actions; scalar_t__ state; scalar_t__ request; } ;
struct TYPE_11__ {scalar_t__ state; unsigned int state_transition; unsigned int ports_num; TYPE_6__* ports; scalar_t__ cmd_thread_used; int name; int mmal; } ;
typedef scalar_t__ OMX_STATETYPE ;
typedef scalar_t__ OMX_HANDLETYPE ;
typedef int OMX_ERRORTYPE ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_1__ MMALOMX_COMPONENT_T ;


 int LOG_ERROR (char*,char*,int ) ;
 int MMALOMX_ACTION_CHECK_FLUSHED ;
 int MMALOMX_ACTION_FLUSH ;
 int MMALOMX_LOCK (TYPE_1__*) ;
 int MMALOMX_LOCK_PORT (TYPE_1__*,TYPE_6__*) ;
 int MMALOMX_UNLOCK (TYPE_1__*) ;
 int MMALOMX_UNLOCK_PORT (TYPE_1__*,TYPE_6__*) ;
 scalar_t__ MMAL_SUCCESS ;
 int OMX_ErrorIncorrectStateTransition ;
 int OMX_ErrorInvalidState ;
 int OMX_ErrorNone ;
 int OMX_ErrorSameState ;
 int OMX_EventError ;
 scalar_t__ OMX_StateExecuting ;
 scalar_t__ OMX_StateIdle ;
 scalar_t__ OMX_StateInvalid ;
 scalar_t__ OMX_StateLoaded ;
 scalar_t__ mmal_component_disable (int ) ;
 scalar_t__ mmal_component_enable (int ) ;
 int mmalil_error_to_omx (scalar_t__) ;
 int mmalomx_callback_event_handler (TYPE_1__*,int ,int ,int ,int *) ;
 int mmalomx_commands_actions_check (TYPE_1__*) ;
 unsigned int mmalomx_state_transition_get (scalar_t__,scalar_t__) ;
 TYPE_2__* state_transition_table ;
 int vcos_assert (int) ;

OMX_ERRORTYPE mmalomx_command_state_set(
   OMX_HANDLETYPE hComponent,
   OMX_STATETYPE state)
{
   MMALOMX_COMPONENT_T *component = (MMALOMX_COMPONENT_T *)hComponent;
   unsigned int i, transition;

   if (component->state == state)
   {
      mmalomx_callback_event_handler(component, OMX_EventError, OMX_ErrorSameState, 0, ((void*)0));
      return OMX_ErrorNone;
   }


   if (state == OMX_StateInvalid)
   {
      component->state = state;
      mmalomx_callback_event_handler(component, OMX_EventError, OMX_ErrorInvalidState, 0, ((void*)0));
      return OMX_ErrorNone;
   }


   vcos_assert(!component->state_transition);


   transition = mmalomx_state_transition_get(component->state, state);
   if (!transition)
   {
      mmalomx_callback_event_handler(component, OMX_EventError, OMX_ErrorIncorrectStateTransition, 0, ((void*)0));
      return OMX_ErrorNone;
   }


   if (state == OMX_StateExecuting || component->state == OMX_StateExecuting)
   {
      MMAL_STATUS_T status;

      if (state == OMX_StateExecuting)
         status = mmal_component_enable(component->mmal);
      else
         status = mmal_component_disable(component->mmal);

      if (status != MMAL_SUCCESS)
      {
         LOG_ERROR("could not %s %s", state == OMX_StateExecuting ? "enable" : "disable", component->name);
         mmalomx_callback_event_handler(component, OMX_EventError, mmalil_error_to_omx(status), 0, ((void*)0));
         return OMX_ErrorNone;
      }
   }

   MMALOMX_LOCK(component);
   component->state_transition = transition;

   for (i = 0; i < component->ports_num; i++)
   {
      if (!component->ports[i].enabled)
         continue;

      MMALOMX_LOCK_PORT(component, component->ports + i);
      component->ports[i].actions = state_transition_table[transition].actions;




      if (state_transition_table[transition].state == OMX_StateIdle &&
          state_transition_table[transition].request == OMX_StateLoaded &&
          component->cmd_thread_used)
         component->ports[i].actions |= MMALOMX_ACTION_FLUSH|MMALOMX_ACTION_CHECK_FLUSHED;
      MMALOMX_UNLOCK_PORT(component, component->ports + i);
   }
   MMALOMX_UNLOCK(component);

   mmalomx_commands_actions_check(component);
   return OMX_ErrorNone;
}
