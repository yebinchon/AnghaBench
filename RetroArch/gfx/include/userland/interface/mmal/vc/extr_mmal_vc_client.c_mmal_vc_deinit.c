
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int refcount; int lock; scalar_t__ inited; int service; int waitpool; int bulk_lock; } ;


 int VCHIQ_SERVICE_HANDLE_INVALID ;
 int VCOS_LOG_CATEGORY ;
 TYPE_1__ client ;
 int destroy_waitpool (int *) ;
 int mmal_vchiq_instance ;
 int vchiq_close_service (int ) ;
 int vchiq_shutdown (int ) ;
 int vcos_log_unregister (int ) ;
 int vcos_mutex_delete (int *) ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;

void mmal_vc_deinit(void)
{
   int count;

   vcos_mutex_lock(&client.lock);
   count = --client.refcount;
   if (count != 0)
   {

      vcos_mutex_unlock(&client.lock);
      return;
   }

   vcos_mutex_delete(&client.bulk_lock);
   destroy_waitpool(&client.waitpool);
   vchiq_close_service(client.service);
   vchiq_shutdown(mmal_vchiq_instance);
   vcos_log_unregister(VCOS_LOG_CATEGORY);

   client.service = VCHIQ_SERVICE_HANDLE_INVALID;
   client.inited = 0;
   vcos_mutex_unlock(&client.lock);
}
