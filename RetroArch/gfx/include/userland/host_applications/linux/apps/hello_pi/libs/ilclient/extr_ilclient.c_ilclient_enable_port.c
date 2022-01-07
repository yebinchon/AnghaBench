
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int comp; } ;
typedef scalar_t__ OMX_ERRORTYPE ;
typedef TYPE_1__ COMPONENT_T ;


 int OMX_CommandPortEnable ;
 scalar_t__ OMX_ErrorNone ;
 scalar_t__ OMX_SendCommand (int ,int ,int,int *) ;
 scalar_t__ ilclient_wait_for_command_complete (TYPE_1__*,int ,int) ;
 int vc_assert (int) ;

void ilclient_enable_port(COMPONENT_T *comp, int portIndex)
{
   OMX_ERRORTYPE error;
   error = OMX_SendCommand(comp->comp, OMX_CommandPortEnable, portIndex, ((void*)0));
   vc_assert(error == OMX_ErrorNone);
   if(ilclient_wait_for_command_complete(comp, OMX_CommandPortEnable, portIndex) < 0)
      vc_assert(0);
}
