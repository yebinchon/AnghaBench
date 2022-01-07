
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ VCOS_STATUS_T ;


 int VCOS_FUNCTION ;
 int VCOS_LOG_CATEGORY ;
 scalar_t__ VCOS_SUCCESS ;
 int WFC_CLIENT_SERVER_API_LOGLEVEL ;
 int vcos_log_register (char*,int ) ;
 int vcos_log_set_level (int ,int ) ;
 int vcos_log_trace (char*,int ,scalar_t__) ;
 int vcos_log_unregister (int ) ;
 scalar_t__ wfc_client_ipc_init () ;

VCOS_STATUS_T wfc_server_connect(void)
{
   VCOS_STATUS_T status;

   vcos_log_set_level(VCOS_LOG_CATEGORY, WFC_CLIENT_SERVER_API_LOGLEVEL);
   vcos_log_register("wfccsapi", VCOS_LOG_CATEGORY);

   status = wfc_client_ipc_init();

   vcos_log_trace("%s: result %d", VCOS_FUNCTION, status);

   if (status != VCOS_SUCCESS)
   {
      vcos_log_unregister(VCOS_LOG_CATEGORY);
   }

   return status;
}
