
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef scalar_t__ VCOS_STATUS_T ;
struct TYPE_2__ {int initialised; size_t num_connections; int * client_handle; int lock; } ;


 scalar_t__ VCOS_SUCCESS ;
 TYPE_1__ dispmanx_client ;
 int vchi_service_use (int ) ;
 int vcos_assert (int) ;
 scalar_t__ vcos_mutex_lock (int *) ;

__attribute__((used)) static __inline void lock_obtain (void) {
   VCOS_STATUS_T status;
   uint32_t i;
   vcos_assert(dispmanx_client.initialised);
   status = vcos_mutex_lock( &dispmanx_client.lock );
   if(dispmanx_client.initialised)
   {
      for (i=0; i<dispmanx_client.num_connections; i++) {
         vchi_service_use(dispmanx_client.client_handle[i]);
      }
   }
   vcos_assert(status == VCOS_SUCCESS);
}
