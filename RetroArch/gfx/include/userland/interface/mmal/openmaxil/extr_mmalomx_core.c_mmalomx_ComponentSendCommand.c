
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; scalar_t__ ports_num; } ;
typedef scalar_t__ OMX_U32 ;
typedef int OMX_STATETYPE ;
typedef int OMX_PTR ;
typedef scalar_t__ OMX_HANDLETYPE ;
typedef int OMX_ERRORTYPE ;
typedef int OMX_COMMANDTYPE ;
typedef TYPE_1__ MMALOMX_COMPONENT_T ;


 int LOG_TRACE (char*,scalar_t__,int ,int ,int,char*,int ) ;
 scalar_t__ OMX_ALL ;
 int OMX_CommandFlush ;
 int OMX_CommandMarkBuffer ;
 int OMX_CommandPortDisable ;
 int OMX_CommandPortEnable ;
 int OMX_CommandStateSet ;
 int OMX_ErrorBadPortIndex ;
 int OMX_ErrorInvalidComponent ;
 int OMX_ErrorInvalidState ;
 int OMX_ErrorNone ;
 int OMX_ErrorNotImplemented ;
 scalar_t__ OMX_StateInvalid ;
 int mmalomx_cmd_to_string (int ) ;
 int mmalomx_command_port_mark (scalar_t__,scalar_t__,int ) ;
 int mmalomx_command_queue (TYPE_1__*,int ,scalar_t__) ;
 char* mmalomx_state_to_string (int ) ;

__attribute__((used)) static OMX_ERRORTYPE mmalomx_ComponentSendCommand(
   OMX_HANDLETYPE hComponent,
   OMX_COMMANDTYPE Cmd,
   OMX_U32 nParam1,
   OMX_PTR pCmdData)
{
   MMALOMX_COMPONENT_T *component = (MMALOMX_COMPONENT_T *)hComponent;
   OMX_ERRORTYPE status = OMX_ErrorNone;

   LOG_TRACE("hComponent %p, Cmd %i (%s), nParam1 %i (%s), pCmdData %p",
             hComponent, Cmd, mmalomx_cmd_to_string(Cmd), (int)nParam1,
             Cmd == OMX_CommandStateSet ? mmalomx_state_to_string((OMX_STATETYPE)nParam1) : "",
             pCmdData);


   if (!hComponent)
      return OMX_ErrorInvalidComponent;
   if (component->state == OMX_StateInvalid)
      return OMX_ErrorInvalidState;


   if (Cmd == OMX_CommandFlush || Cmd == OMX_CommandMarkBuffer ||
       Cmd == OMX_CommandPortEnable || Cmd == OMX_CommandPortDisable)
   {
      if (nParam1 != OMX_ALL && nParam1 >= component->ports_num)
         return OMX_ErrorBadPortIndex;
   }

   if (Cmd == OMX_CommandStateSet ||
       Cmd == OMX_CommandFlush ||
       Cmd == OMX_CommandPortEnable ||
       Cmd == OMX_CommandPortDisable)
   {
      status = mmalomx_command_queue(component, Cmd, nParam1);
   }
   else if (Cmd == OMX_CommandMarkBuffer)
   {
      status = mmalomx_command_port_mark(hComponent, nParam1, pCmdData);
   }
   else
   {
      status = OMX_ErrorNotImplemented;
   }

   return status;
}
