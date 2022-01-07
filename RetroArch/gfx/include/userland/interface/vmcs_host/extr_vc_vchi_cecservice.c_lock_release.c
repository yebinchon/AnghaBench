
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int * client_handle; scalar_t__ initialised; } ;


 TYPE_1__ cecservice_client ;
 int vchi_service_release (int ) ;
 int vcos_mutex_unlock (int *) ;

__attribute__((used)) static __inline void lock_release (void) {
   if(cecservice_client.initialised) {
      vchi_service_release(cecservice_client.client_handle[0]);
   }
   vcos_mutex_unlock(&cecservice_client.lock);
}
