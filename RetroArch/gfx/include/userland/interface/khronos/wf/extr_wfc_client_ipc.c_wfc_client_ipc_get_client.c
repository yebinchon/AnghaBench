
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WFC_CLIENT_IPC_T ;


 int wfc_client_ipc ;

WFC_CLIENT_IPC_T *wfc_client_ipc_get_client(void)
{
   return &wfc_client_ipc;
}
