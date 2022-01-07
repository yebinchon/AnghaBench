
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ refcount; int lock; scalar_t__ service; } ;


 TYPE_1__ gpuserv_client ;
 int vchi_service_close (scalar_t__) ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;

void vc_gpuserv_deinit( void )
{
   vcos_mutex_lock(&gpuserv_client.lock);

   if (gpuserv_client.refcount > 0 && --gpuserv_client.refcount == 0)
   {
      vchi_service_close(gpuserv_client.service);
      gpuserv_client.service = 0;
   }
   vcos_mutex_unlock(&gpuserv_client.lock);
}
