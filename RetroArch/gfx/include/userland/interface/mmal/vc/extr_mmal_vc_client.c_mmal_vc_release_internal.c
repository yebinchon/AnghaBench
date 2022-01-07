
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ usecount; int lock; int service; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_1__ MMAL_CLIENT_T ;


 int MMAL_EIO ;
 int MMAL_SUCCESS ;
 scalar_t__ VCHIQ_SUCCESS ;
 scalar_t__ vchiq_release_service (int ) ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;

__attribute__((used)) static MMAL_STATUS_T mmal_vc_release_internal(MMAL_CLIENT_T *client)
{
   MMAL_STATUS_T status = MMAL_SUCCESS;
   vcos_mutex_lock(&client->lock);
   if(--client->usecount == 0)
   {
      if(vchiq_release_service(client->service) != VCHIQ_SUCCESS)
      {
         client->usecount++;
         status = MMAL_EIO;
      }
   }
   vcos_mutex_unlock(&client->lock);
   return status;
}
