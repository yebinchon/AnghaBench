
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int actions; int enabled; } ;
struct TYPE_8__ {scalar_t__ state; TYPE_5__* ports; scalar_t__ cmd_thread_used; } ;
typedef size_t OMX_U32 ;
typedef scalar_t__ OMX_HANDLETYPE ;
typedef int OMX_ERRORTYPE ;
typedef TYPE_1__ MMALOMX_COMPONENT_T ;


 int MMALOMX_ACTION_CHECK_DEALLOCATED ;
 int MMALOMX_ACTION_CHECK_FLUSHED ;
 int MMALOMX_ACTION_DISABLE ;
 int MMALOMX_ACTION_FLUSH ;
 int MMALOMX_ACTION_NOTIFY_DISABLE ;
 int MMALOMX_LOCK_PORT (TYPE_1__*,TYPE_5__*) ;
 int MMALOMX_UNLOCK_PORT (TYPE_1__*,TYPE_5__*) ;
 int MMAL_FALSE ;
 int OMX_CommandPortDisable ;
 int OMX_ErrorNone ;
 int OMX_EventCmdComplete ;
 scalar_t__ OMX_StateLoaded ;
 scalar_t__ OMX_StateWaitForResources ;
 int mmalomx_callback_event_handler (TYPE_1__*,int ,int ,size_t,int *) ;
 int mmalomx_commands_actions_check (TYPE_1__*) ;

OMX_ERRORTYPE mmalomx_command_port_disable(
   OMX_HANDLETYPE hComponent,
   OMX_U32 nPortIndex)
{
   MMALOMX_COMPONENT_T *component = (MMALOMX_COMPONENT_T *)hComponent;
   component->ports[nPortIndex].enabled = MMAL_FALSE;

   if (component->state == OMX_StateLoaded ||
       component->state == OMX_StateWaitForResources)
   {
      mmalomx_callback_event_handler(component, OMX_EventCmdComplete, OMX_CommandPortDisable, nPortIndex, ((void*)0));
      return OMX_ErrorNone;
   }

   MMALOMX_LOCK_PORT(component, &component->ports[nPortIndex]);
   component->ports[nPortIndex].actions =
      MMALOMX_ACTION_DISABLE|MMALOMX_ACTION_CHECK_DEALLOCATED|MMALOMX_ACTION_NOTIFY_DISABLE;
   if (component->cmd_thread_used)
      component->ports[nPortIndex].actions |=
         MMALOMX_ACTION_FLUSH|MMALOMX_ACTION_CHECK_FLUSHED;
   MMALOMX_UNLOCK_PORT(component, &component->ports[nPortIndex]);

   mmalomx_commands_actions_check(component);

   return OMX_ErrorNone;
}
