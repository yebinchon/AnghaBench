
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int result ;
typedef int WFCNativeStreamType ;
typedef scalar_t__ VCOS_STATUS_T ;


 int VCOS_FUNCTION ;
 scalar_t__ VCOS_SUCCESS ;
 int WFC_IPC_MSG_SS_IS_IN_USE ;
 int vcos_log_trace (char*,int ,scalar_t__,...) ;
 scalar_t__ wfc_client_server_api_sendwait_stream (int ,int ,scalar_t__*,size_t*) ;

bool wfc_server_stream_is_in_use(WFCNativeStreamType stream)
{
   VCOS_STATUS_T status;
   uint32_t result = 0;
   size_t result_len = sizeof(result);

   vcos_log_trace("%s: stream 0x%x", VCOS_FUNCTION, stream);

   status = wfc_client_server_api_sendwait_stream(WFC_IPC_MSG_SS_IS_IN_USE, stream, &result, &result_len);

   vcos_log_trace("%s: status 0x%x, result %u", VCOS_FUNCTION, status, result);

   if (status != VCOS_SUCCESS)
      result = 0;

   return result != 0;
}
