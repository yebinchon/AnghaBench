
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_15__ {int * comp; } ;
struct TYPE_12__ {int nVersion; } ;
struct TYPE_14__ {int nSize; unsigned int nU32; int nPortIndex; TYPE_1__ nVersion; } ;
struct TYPE_13__ {TYPE_4__* source; TYPE_4__* sink; int sink_port; int source_port; } ;
typedef TYPE_2__ TUNNEL_T ;
typedef scalar_t__ OMX_STATETYPE ;
typedef TYPE_3__ OMX_PARAM_U32TYPE ;
typedef scalar_t__ OMX_ERRORTYPE ;


 int ILCLIENT_EVENT_ERROR ;
 int ILCLIENT_PARAMETER_CHANGED ;
 scalar_t__ OMX_ErrorNone ;
 int OMX_EventError ;
 int OMX_EventPortSettingsChanged ;
 scalar_t__ OMX_GetParameter (int *,int ,TYPE_3__*) ;
 scalar_t__ OMX_GetState (int *,scalar_t__*) ;
 int OMX_IndexParamActiveStream ;
 int OMX_IndexParamNumAvailableStreams ;
 scalar_t__ OMX_SetParameter (int *,int ,TYPE_3__*) ;
 scalar_t__ OMX_SetupTunnel (int *,int ,int *,int ) ;
 int OMX_StateIdle ;
 scalar_t__ OMX_StateLoaded ;
 int OMX_VERSION ;
 scalar_t__ ilclient_change_component_state (TYPE_4__*,int ) ;
 int ilclient_debug_output (char*,scalar_t__,...) ;
 int ilclient_disable_tunnel (TYPE_2__*) ;
 int ilclient_enable_tunnel (TYPE_2__*) ;
 int ilclient_remove_event (TYPE_4__*,int ,int ,int,int ,int) ;
 scalar_t__ ilclient_wait_for_event (TYPE_4__*,int ,int ,int ,int,int,int,int) ;
 int vc_assert (int) ;

int ilclient_setup_tunnel(TUNNEL_T *tunnel, unsigned int portStream, int timeout)
{
   OMX_ERRORTYPE error;
   OMX_PARAM_U32TYPE param;
   OMX_STATETYPE state;
   int32_t status;
   int enable_error;


   error = OMX_GetState(tunnel->source->comp, &state);
   vc_assert(error == OMX_ErrorNone);
   if (state == OMX_StateLoaded && ilclient_change_component_state(tunnel->source, OMX_StateIdle) < 0)
      return -2;


   if(timeout)
   {
      status = ilclient_wait_for_event(tunnel->source, OMX_EventPortSettingsChanged,
                                       tunnel->source_port, 0, -1, 1,
                                       ILCLIENT_PARAMETER_CHANGED | ILCLIENT_EVENT_ERROR, timeout);

      if (status < 0)
      {
         ilclient_debug_output(
            "ilclient: timed out waiting for port settings changed on port %d", tunnel->source_port);
         return status;
      }
   }


   ilclient_disable_tunnel(tunnel);



   param.nSize = sizeof(OMX_PARAM_U32TYPE);
   param.nVersion.nVersion = OMX_VERSION;
   param.nPortIndex = tunnel->source_port;
   if (OMX_GetParameter(tunnel->source->comp, OMX_IndexParamNumAvailableStreams, &param) == OMX_ErrorNone)
   {
      if (param.nU32 == 0)
      {


         return -3;
      }
      if (param.nU32 <= portStream)
      {



         return -4;
      }

      param.nU32 = portStream;
      error = OMX_SetParameter(tunnel->source->comp, OMX_IndexParamActiveStream, &param);
      vc_assert(error == OMX_ErrorNone);
   }


   error = OMX_SetupTunnel(tunnel->source->comp, tunnel->source_port, tunnel->sink->comp, tunnel->sink_port);

   enable_error = 0;

   if (error != OMX_ErrorNone || (enable_error=ilclient_enable_tunnel(tunnel)) < 0)
   {

      error = OMX_SetupTunnel(tunnel->source->comp, tunnel->source_port, ((void*)0), 0);
      vc_assert(error == OMX_ErrorNone);
      error = OMX_SetupTunnel(tunnel->sink->comp, tunnel->sink_port, ((void*)0), 0);
      vc_assert(error == OMX_ErrorNone);

      if(enable_error)
      {

         ilclient_remove_event(tunnel->sink, OMX_EventError, 0, 1, 0, 1);
         ilclient_remove_event(tunnel->source, OMX_EventError, 0, 1, 0, 1);
      }

      ilclient_debug_output("ilclient: could not setup/enable tunnel (setup=0x%x,enable=%d)",
                             error, enable_error);
      return -5;
   }

   return 0;
}
