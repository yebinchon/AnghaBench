
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ keep_alive_count; int lock; int service; } ;


 int vchiq_release_service (int ) ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;
 scalar_t__ vcos_verify (int) ;
 TYPE_1__ wfc_client_ipc ;

void wfc_client_ipc_release_keep_alive(void)
{
   vcos_mutex_lock(&wfc_client_ipc.lock);

   if (vcos_verify(wfc_client_ipc.keep_alive_count > 0))
   {
      if (!--wfc_client_ipc.keep_alive_count)
         vchiq_release_service(wfc_client_ipc.service);
   }

   vcos_mutex_unlock(&wfc_client_ipc.lock);
}
