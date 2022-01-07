
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int comp; } ;
struct TYPE_4__ {int sink_port; TYPE_2__* sink; int source_port; TYPE_2__* source; } ;
typedef TYPE_1__ TUNNEL_T ;
typedef scalar_t__ OMX_ERRORTYPE ;


 int ILCLIENT_PORT_FLUSH ;
 int OMX_CommandFlush ;
 scalar_t__ OMX_ErrorNone ;
 int OMX_EventCmdComplete ;
 scalar_t__ OMX_SendCommand (int ,int ,int ,int *) ;
 int VCOS_EVENT_FLAGS_SUSPEND ;
 int ilclient_wait_for_event (TYPE_2__*,int ,int ,int ,int ,int ,int ,int ) ;
 int vc_assert (int) ;

void ilclient_flush_tunnels(TUNNEL_T *tunnel, int max)
{
   OMX_ERRORTYPE error;
   int i;

   i=0;
   while (tunnel[i].source && (max == 0 || i < max))
   {
      error = OMX_SendCommand(tunnel[i].source->comp, OMX_CommandFlush, tunnel[i].source_port, ((void*)0));
      vc_assert(error == OMX_ErrorNone);

      error = OMX_SendCommand(tunnel[i].sink->comp, OMX_CommandFlush, tunnel[i].sink_port, ((void*)0));
      vc_assert(error == OMX_ErrorNone);

      ilclient_wait_for_event(tunnel[i].source, OMX_EventCmdComplete,
                              OMX_CommandFlush, 0, tunnel[i].source_port, 0,
                              ILCLIENT_PORT_FLUSH, VCOS_EVENT_FLAGS_SUSPEND);
      ilclient_wait_for_event(tunnel[i].sink, OMX_EventCmdComplete,
                              OMX_CommandFlush, 0, tunnel[i].sink_port, 0,
                              ILCLIENT_PORT_FLUSH, VCOS_EVENT_FLAGS_SUSPEND);
      i++;
   }
}
