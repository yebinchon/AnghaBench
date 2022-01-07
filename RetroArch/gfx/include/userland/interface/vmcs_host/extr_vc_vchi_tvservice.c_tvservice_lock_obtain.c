
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int * client_handle; scalar_t__ initialised; } ;


 scalar_t__ VCOS_SUCCESS ;
 TYPE_1__ tvservice_client ;
 int vchi_service_use (int ) ;
 scalar_t__ vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;

__attribute__((used)) static __inline int tvservice_lock_obtain (void) {
   if(tvservice_client.initialised && vcos_mutex_lock(&tvservice_client.lock) == VCOS_SUCCESS) {

      if (tvservice_client.initialised) {
         vchi_service_use(tvservice_client.client_handle[0]);
         return 0;
      }
      else
         vcos_mutex_unlock(&tvservice_client.lock);
   }

   return -1;
}
