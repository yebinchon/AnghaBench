
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WFCContext ;
typedef scalar_t__ VCOS_STATUS_T ;


 int VCOS_FUNCTION ;
 scalar_t__ VCOS_SUCCESS ;
 int WFC_IPC_MSG_ACTIVATE ;
 int vcos_assert (int) ;
 int vcos_log_trace (char*,int ,int ) ;
 scalar_t__ wfc_client_server_api_send_context (int ,int ) ;

void wfc_server_activate(WFCContext context)
{
   VCOS_STATUS_T status;

   vcos_log_trace("%s: context 0x%x", VCOS_FUNCTION, context);

   status = wfc_client_server_api_send_context(WFC_IPC_MSG_ACTIVATE, context);

   vcos_assert(status == VCOS_SUCCESS);
}
