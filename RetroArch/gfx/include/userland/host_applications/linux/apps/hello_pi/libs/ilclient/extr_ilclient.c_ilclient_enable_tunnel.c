
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int comp; } ;
struct TYPE_8__ {int sink_port; TYPE_2__* sink; int source_port; TYPE_2__* source; } ;
typedef TYPE_1__ TUNNEL_T ;
typedef scalar_t__ OMX_STATETYPE ;
typedef scalar_t__ OMX_ERRORTYPE ;


 int ILCLIENT_EVENT_ERROR ;
 int ILCLIENT_PORT_ENABLED ;
 int OMX_CommandPortEnable ;
 int OMX_CommandStateSet ;
 scalar_t__ OMX_ErrorNone ;
 int OMX_EventCmdComplete ;
 scalar_t__ OMX_GetState (int ,scalar_t__*) ;
 scalar_t__ OMX_SendCommand (int ,int ,int ,int *) ;
 int OMX_StateIdle ;
 scalar_t__ OMX_StateLoaded ;
 int VCOS_EVENT_FLAGS_SUSPEND ;
 int ilclient_debug_output (char*,...) ;
 int ilclient_disable_port (TYPE_2__*,int ) ;
 scalar_t__ ilclient_wait_for_command_complete (TYPE_2__*,int ,int ) ;
 int ilclient_wait_for_command_complete_dual (TYPE_2__*,int ,int ,TYPE_2__*) ;
 int ilclient_wait_for_event (TYPE_2__*,int ,int ,int ,int ,int ,int,int ) ;
 int vc_assert (int) ;

int ilclient_enable_tunnel(TUNNEL_T *tunnel)
{
   OMX_STATETYPE state;
   OMX_ERRORTYPE error;

   ilclient_debug_output("ilclient: enable tunnel from %x/%d to %x/%d",
                         tunnel->source, tunnel->source_port,
                         tunnel->sink, tunnel->sink_port);

   error = OMX_SendCommand(tunnel->source->comp, OMX_CommandPortEnable, tunnel->source_port, ((void*)0));
   vc_assert(error == OMX_ErrorNone);

   error = OMX_SendCommand(tunnel->sink->comp, OMX_CommandPortEnable, tunnel->sink_port, ((void*)0));
   vc_assert(error == OMX_ErrorNone);


   error = OMX_GetState(tunnel->sink->comp, &state);
   vc_assert(error == OMX_ErrorNone);
   if (state == OMX_StateLoaded)
   {
      int ret = 0;

      if(ilclient_wait_for_command_complete(tunnel->sink, OMX_CommandPortEnable, tunnel->sink_port) != 0 ||
         OMX_SendCommand(tunnel->sink->comp, OMX_CommandStateSet, OMX_StateIdle, ((void*)0)) != OMX_ErrorNone ||
         (ret = ilclient_wait_for_command_complete_dual(tunnel->sink, OMX_CommandStateSet, OMX_StateIdle, tunnel->source)) < 0)
      {
         if(ret == -2)
         {

            ilclient_wait_for_command_complete(tunnel->source, OMX_CommandPortEnable, tunnel->source_port);
            ilclient_disable_port(tunnel->sink, tunnel->sink_port);
         }

         ilclient_debug_output("ilclient: could not change component state to IDLE");
         ilclient_disable_port(tunnel->source, tunnel->source_port);
         return -1;
      }
   }
   else
   {
      if (ilclient_wait_for_command_complete(tunnel->sink, OMX_CommandPortEnable, tunnel->sink_port) != 0)
      {
         ilclient_debug_output("ilclient: could not change sink port %d to enabled", tunnel->sink_port);


         ilclient_disable_port(tunnel->source, tunnel->source_port);

         ilclient_wait_for_event(tunnel->source, OMX_EventCmdComplete,
                                 OMX_CommandPortEnable, 0, tunnel->source_port, 0,
                                 ILCLIENT_PORT_ENABLED | ILCLIENT_EVENT_ERROR, VCOS_EVENT_FLAGS_SUSPEND);
         return -1;
      }
   }

   if(ilclient_wait_for_command_complete(tunnel->source, OMX_CommandPortEnable, tunnel->source_port) != 0)
   {
      ilclient_debug_output("ilclient: could not change source port %d to enabled", tunnel->source_port);


      ilclient_disable_port(tunnel->sink, tunnel->sink_port);
      return -1;
   }

   return 0;
}
