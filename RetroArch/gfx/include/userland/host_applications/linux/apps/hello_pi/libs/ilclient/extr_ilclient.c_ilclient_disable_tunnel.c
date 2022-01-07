
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int error_mask; int comp; } ;
struct TYPE_4__ {TYPE_2__* sink; TYPE_2__* source; int sink_port; int source_port; } ;
typedef TYPE_1__ TUNNEL_T ;
typedef scalar_t__ OMX_ERRORTYPE ;


 int ILCLIENT_ERROR_UNPOPULATED ;
 int OMX_CommandPortDisable ;
 scalar_t__ OMX_ErrorNone ;
 scalar_t__ OMX_SendCommand (int ,int ,int ,int *) ;
 scalar_t__ ilclient_wait_for_command_complete (TYPE_2__*,int ,int ) ;
 int vc_assert (int) ;

void ilclient_disable_tunnel(TUNNEL_T *tunnel)
{
   OMX_ERRORTYPE error;

   if(tunnel->source == 0 || tunnel->sink == 0)
      return;

   tunnel->source->error_mask |= ILCLIENT_ERROR_UNPOPULATED;
   tunnel->sink->error_mask |= ILCLIENT_ERROR_UNPOPULATED;

   error = OMX_SendCommand(tunnel->source->comp, OMX_CommandPortDisable, tunnel->source_port, ((void*)0));
   vc_assert(error == OMX_ErrorNone);

   error = OMX_SendCommand(tunnel->sink->comp, OMX_CommandPortDisable, tunnel->sink_port, ((void*)0));
   vc_assert(error == OMX_ErrorNone);

   if(ilclient_wait_for_command_complete(tunnel->source, OMX_CommandPortDisable, tunnel->source_port) < 0)
      vc_assert(0);

   if(ilclient_wait_for_command_complete(tunnel->sink, OMX_CommandPortDisable, tunnel->sink_port) < 0)
      vc_assert(0);

   tunnel->source->error_mask &= ~ILCLIENT_ERROR_UNPOPULATED;
   tunnel->sink->error_mask &= ~ILCLIENT_ERROR_UNPOPULATED;
}
