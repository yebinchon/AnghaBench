
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int comp; } ;
typedef int OMX_STATETYPE ;
typedef scalar_t__ OMX_ERRORTYPE ;
typedef TYPE_1__ COMPONENT_T ;


 int OMX_CommandStateSet ;
 scalar_t__ OMX_ErrorNone ;
 int OMX_EventError ;
 scalar_t__ OMX_SendCommand (int ,int ,int ,int *) ;
 int ilclient_debug_output (char*,int ) ;
 int ilclient_remove_event (TYPE_1__*,int ,int ,int,int ,int) ;
 scalar_t__ ilclient_wait_for_command_complete (TYPE_1__*,int ,int ) ;
 int vc_assert (int) ;

int ilclient_change_component_state(COMPONENT_T *comp, OMX_STATETYPE state)
{
   OMX_ERRORTYPE error;
   error = OMX_SendCommand(comp->comp, OMX_CommandStateSet, state, ((void*)0));
   vc_assert(error == OMX_ErrorNone);
   if(ilclient_wait_for_command_complete(comp, OMX_CommandStateSet, state) < 0)
   {
      ilclient_debug_output("ilclient: could not change component state to %d", state);
      ilclient_remove_event(comp, OMX_EventError, 0, 1, 0, 1);
      return -1;
   }
   return 0;
}
