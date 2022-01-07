
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int cmd_queue; } ;
struct TYPE_6__ {int offset; int cmd; } ;
typedef int OMX_U32 ;
typedef int OMX_ERRORTYPE ;
typedef TYPE_1__ MMAL_BUFFER_HEADER_T ;
typedef TYPE_2__ MMALOMX_COMPONENT_T ;


 int OMX_ErrorNoMore ;
 int OMX_ErrorNone ;
 int mmal_buffer_header_release (TYPE_1__*) ;
 TYPE_1__* mmal_queue_get (int ) ;

OMX_ERRORTYPE mmalomx_command_dequeue(
   MMALOMX_COMPONENT_T *component,
   OMX_U32 *arg1, OMX_U32 *arg2)
{
   MMAL_BUFFER_HEADER_T *cmd = mmal_queue_get(component->cmd_queue);
   if (!cmd)
      return OMX_ErrorNoMore;

   *arg1 = cmd->cmd;
   *arg2 = cmd->offset;
   mmal_buffer_header_release(cmd);
   return OMX_ErrorNone;
}
