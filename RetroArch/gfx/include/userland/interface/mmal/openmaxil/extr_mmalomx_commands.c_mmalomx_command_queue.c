
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int cmd_queue; TYPE_1__* cmd_pool; } ;
struct TYPE_10__ {void* offset; void* cmd; } ;
struct TYPE_9__ {int queue; } ;
typedef void* OMX_U32 ;
typedef int OMX_ERRORTYPE ;
typedef TYPE_2__ MMAL_BUFFER_HEADER_T ;
typedef TYPE_3__ MMALOMX_COMPONENT_T ;


 int LOG_ERROR (char*) ;
 int OMX_ErrorInsufficientResources ;
 int OMX_ErrorNone ;
 TYPE_2__* mmal_queue_get (int ) ;
 int mmal_queue_put (int ,TYPE_2__*) ;
 int mmalomx_commands_actions_signal (TYPE_3__*) ;
 int vcos_verify (TYPE_2__*) ;

OMX_ERRORTYPE mmalomx_command_queue(
   MMALOMX_COMPONENT_T *component,
   OMX_U32 arg1, OMX_U32 arg2)
{
   MMAL_BUFFER_HEADER_T *cmd = mmal_queue_get(component->cmd_pool->queue);

   if (!vcos_verify(cmd))
   {
      LOG_ERROR("command queue too small");
      return OMX_ErrorInsufficientResources;
   }

   cmd->cmd = arg1;
   cmd->offset = arg2;
   mmal_queue_put(component->cmd_queue, cmd);

   mmalomx_commands_actions_signal(component);

   return OMX_ErrorNone;
}
