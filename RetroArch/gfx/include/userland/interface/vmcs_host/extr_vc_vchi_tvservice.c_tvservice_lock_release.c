
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int * client_handle; scalar_t__ initialised; } ;


 TYPE_1__ tvservice_client ;
 int vchi_service_release (int ) ;
 int vcos_mutex_unlock (int *) ;

__attribute__((used)) static __inline void tvservice_lock_release (void) {
   if (tvservice_client.initialised) {
      vchi_service_release(tvservice_client.client_handle[0]);
   }
   vcos_mutex_unlock(&tvservice_client.lock);
}
