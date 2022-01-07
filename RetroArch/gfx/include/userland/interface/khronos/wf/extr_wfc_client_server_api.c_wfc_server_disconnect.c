
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VCOS_FUNCTION ;
 int VCOS_LOG_CATEGORY ;
 int vcos_log_trace (char*,int ) ;
 int vcos_log_unregister (int ) ;
 scalar_t__ wfc_client_ipc_deinit () ;

void wfc_server_disconnect(void)
{
   vcos_log_trace("%s: called", VCOS_FUNCTION);

   if (wfc_client_ipc_deinit())
   {
      vcos_log_unregister(VCOS_LOG_CATEGORY);
   }
}
