
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ KHR_STATUS_T ;


 scalar_t__ KHR_SUCCESS ;
 int RPC_INIT () ;
 int client_mutex ;
 int client_tls ;
 int client_tls_mutex ;
 int client_tls_process ;
 scalar_t__ platform_mutex_create (int *) ;
 int platform_mutex_destroy (int *) ;
 scalar_t__ platform_tls_create (int *) ;
 int platform_tls_destroy (int ) ;

bool client_process_attach()
{
   KHR_STATUS_T status;
   status = platform_tls_create(&client_tls);
   if (status != KHR_SUCCESS) {
      return 0;
   }
   status = platform_mutex_create(&client_mutex);

   if (status != KHR_SUCCESS) {
      platform_tls_destroy(client_tls);
      return 0;
   }
   if (!RPC_INIT()) {
      platform_mutex_destroy(&client_mutex);
      platform_tls_destroy(client_tls);
      return 0;
   }
   return 1;
}
