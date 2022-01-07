
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int actions; int enabled; } ;
struct TYPE_8__ {scalar_t__ state; TYPE_5__* ports; } ;
typedef size_t OMX_U32 ;
typedef scalar_t__ OMX_HANDLETYPE ;
typedef int OMX_ERRORTYPE ;
typedef TYPE_1__ MMALOMX_COMPONENT_T ;


 int MMALOMX_ACTION_CHECK_ALLOCATED ;
 int MMALOMX_ACTION_ENABLE ;
 int MMALOMX_ACTION_NOTIFY_ENABLE ;
 int MMALOMX_LOCK_PORT (TYPE_1__*,TYPE_5__*) ;
 int MMALOMX_UNLOCK_PORT (TYPE_1__*,TYPE_5__*) ;
 int MMAL_TRUE ;
 int OMX_CommandPortEnable ;
 int OMX_ErrorNone ;
 int OMX_EventCmdComplete ;
 scalar_t__ OMX_StateLoaded ;
 scalar_t__ OMX_StateWaitForResources ;
 int mmalomx_callback_event_handler (TYPE_1__*,int ,int ,size_t,int *) ;
 int mmalomx_commands_actions_check (TYPE_1__*) ;

OMX_ERRORTYPE mmalomx_command_port_enable(
   OMX_HANDLETYPE hComponent,
   OMX_U32 nPortIndex)
{
   MMALOMX_COMPONENT_T *component = (MMALOMX_COMPONENT_T *)hComponent;
   component->ports[nPortIndex].enabled = MMAL_TRUE;

   if (component->state == OMX_StateLoaded ||
       component->state == OMX_StateWaitForResources)
   {
      mmalomx_callback_event_handler(component, OMX_EventCmdComplete, OMX_CommandPortEnable, nPortIndex, ((void*)0));
      return OMX_ErrorNone;
   }

   MMALOMX_LOCK_PORT(component, &component->ports[nPortIndex]);
   component->ports[nPortIndex].actions =
      MMALOMX_ACTION_CHECK_ALLOCATED|MMALOMX_ACTION_ENABLE|MMALOMX_ACTION_NOTIFY_ENABLE;
   MMALOMX_UNLOCK_PORT(component, &component->ports[nPortIndex]);

   mmalomx_commands_actions_check(component);

   return OMX_ErrorNone;
}
