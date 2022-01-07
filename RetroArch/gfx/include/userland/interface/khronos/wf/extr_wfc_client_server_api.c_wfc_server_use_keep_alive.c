
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int wfc_client_ipc_use_keep_alive () ;

void wfc_server_use_keep_alive(void)
{
   wfc_client_ipc_use_keep_alive();
}
