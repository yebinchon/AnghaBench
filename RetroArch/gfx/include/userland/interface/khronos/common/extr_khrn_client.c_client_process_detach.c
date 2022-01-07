
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RPC_TERM () ;
 int client_mutex ;
 int client_tls ;
 int client_tls_process ;
 int platform_mutex_destroy (int *) ;
 int platform_tls_destroy (int ) ;

void client_process_detach()
{
   RPC_TERM();
   platform_tls_destroy(client_tls);
   platform_mutex_destroy(&client_mutex);




}
