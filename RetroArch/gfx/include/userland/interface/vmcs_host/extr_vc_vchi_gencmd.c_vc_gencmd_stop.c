
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_2__ {int message_available_event; int lock; scalar_t__ initialised; int * open_handle; scalar_t__ num_connections; } ;


 int assert (int) ;
 TYPE_1__ gencmd_client ;
 scalar_t__ lock_obtain () ;
 int lock_release () ;
 int use_gencmd_service () ;
 size_t vchi_service_close (int ) ;
 int vcos_event_delete (int *) ;
 int vcos_mutex_delete (int *) ;

void vc_gencmd_stop () {


   int32_t success,i;

   if (!gencmd_client.initialised)
      return;

   if(lock_obtain() == 0)
   {
      use_gencmd_service();

      for(i = 0; i< (int32_t)gencmd_client.num_connections; i++) {
         success = vchi_service_close( gencmd_client.open_handle[i]);
         assert(success == 0);
      }

      gencmd_client.initialised = 0;

      lock_release();

      vcos_mutex_delete(&gencmd_client.lock);
      vcos_event_delete(&gencmd_client.message_available_event);
   }
}
