
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int service; int keep_alive_count; } ;


 int vchiq_use_service (int ) ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;
 TYPE_1__ wfc_client_ipc ;

void wfc_client_ipc_use_keep_alive(void)
{
   vcos_mutex_lock(&wfc_client_ipc.lock);

   if (!wfc_client_ipc.keep_alive_count++)
      vchiq_use_service(wfc_client_ipc.service);

   vcos_mutex_unlock(&wfc_client_ipc.lock);
}
