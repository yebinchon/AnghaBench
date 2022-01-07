
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_connections; int * open_handle; } ;


 TYPE_1__ gencmd_client ;
 int vchi_service_release (int ) ;

int release_gencmd_service(void) {
   int ret = 0;
   int i=0;
   for(i = 0; i < gencmd_client.num_connections; i++) {
      ret = (ret == 0) ? vchi_service_release(gencmd_client.open_handle[i]) : ret;
   }
   return ret;
}
