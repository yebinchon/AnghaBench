
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int actions; } ;
struct TYPE_7__ {TYPE_4__* ports; } ;
typedef size_t OMX_U32 ;
typedef scalar_t__ OMX_HANDLETYPE ;
typedef int OMX_ERRORTYPE ;
typedef TYPE_1__ MMALOMX_COMPONENT_T ;


 int MMALOMX_ACTION_CHECK_FLUSHED ;
 int MMALOMX_ACTION_FLUSH ;
 int MMALOMX_ACTION_NOTIFY_FLUSH ;
 int MMALOMX_LOCK_PORT (TYPE_1__*,TYPE_4__*) ;
 int MMALOMX_UNLOCK_PORT (TYPE_1__*,TYPE_4__*) ;
 int OMX_ErrorNone ;
 int mmalomx_commands_actions_check (TYPE_1__*) ;

OMX_ERRORTYPE mmalomx_command_port_flush(
   OMX_HANDLETYPE hComponent,
   OMX_U32 nPortIndex)
{
   MMALOMX_COMPONENT_T *component = (MMALOMX_COMPONENT_T *)hComponent;

   MMALOMX_LOCK_PORT(component, &component->ports[nPortIndex]);
   component->ports[nPortIndex].actions =
      MMALOMX_ACTION_FLUSH|MMALOMX_ACTION_CHECK_FLUSHED|MMALOMX_ACTION_NOTIFY_FLUSH;
   MMALOMX_UNLOCK_PORT(component, &component->ports[nPortIndex]);

   mmalomx_commands_actions_check(component);

   return OMX_ErrorNone;
}
