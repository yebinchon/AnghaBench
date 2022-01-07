
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ refcount; int lock; scalar_t__ service; int waitpool; } ;


 int VCOS_FUNCTION ;
 int VCOS_LOG_CATEGORY ;
 int init_once ;
 int vchiq_remove_service (scalar_t__) ;
 int vchiq_shutdown (int ) ;
 int vcos_log_trace (char*,int ) ;
 int vcos_log_unregister (int ) ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;
 int vcos_once (int *,int ) ;
 TYPE_1__ wfc_client_ipc ;
 int wfc_client_ipc_destroy_waitpool (int *) ;
 int wfc_client_ipc_once ;
 int wfc_client_ipc_vchiq_instance ;

bool wfc_client_ipc_deinit(void)
{
   bool service_destroyed = 0;

   vcos_once(&wfc_client_ipc_once, init_once);

   vcos_mutex_lock(&wfc_client_ipc.lock);

   if (!wfc_client_ipc.refcount)
   {

      goto completed;
   }

   if (--wfc_client_ipc.refcount != 0)
   {

      goto completed;
   }

   vcos_log_trace("%s: starting deinitialisation", VCOS_FUNCTION);


   wfc_client_ipc_destroy_waitpool(&wfc_client_ipc.waitpool);
   vchiq_remove_service(wfc_client_ipc.service);
   vchiq_shutdown(wfc_client_ipc_vchiq_instance);
   vcos_log_unregister(VCOS_LOG_CATEGORY);

   wfc_client_ipc.service = 0;

   service_destroyed = 1;

completed:
   vcos_mutex_unlock(&wfc_client_ipc.lock);

   return service_destroyed;
}
