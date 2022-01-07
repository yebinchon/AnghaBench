
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int sink_port; TYPE_1__* sink; int source_port; TYPE_2__* source; } ;
struct TYPE_6__ {int comp; } ;
struct TYPE_5__ {int comp; } ;
typedef TYPE_3__ TUNNEL_T ;
typedef scalar_t__ OMX_ERRORTYPE ;


 scalar_t__ OMX_ErrorNone ;
 scalar_t__ OMX_SetupTunnel (int ,int ,int *,int ) ;
 int vc_assert (int) ;

void ilclient_teardown_tunnels(TUNNEL_T *tunnel)
{
   int i;
   OMX_ERRORTYPE error;

   i=0;;
   while (tunnel[i].source)
   {
      error = OMX_SetupTunnel(tunnel[i].source->comp, tunnel[i].source_port, ((void*)0), 0);
      vc_assert(error == OMX_ErrorNone);

      error = OMX_SetupTunnel(tunnel[i].sink->comp, tunnel[i].sink_port, ((void*)0), 0);
      vc_assert(error == OMX_ErrorNone);
      i++;
   }
}
