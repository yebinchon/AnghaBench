
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ inited; } ;
typedef int MMAL_STATUS_T ;


 int MMAL_ENOTCONN ;
 TYPE_1__ client ;
 int mmal_vc_release_internal (TYPE_1__*) ;

MMAL_STATUS_T mmal_vc_release(void)
{
   MMAL_STATUS_T status = MMAL_ENOTCONN;
   if(client.inited)
      status = mmal_vc_release_internal(&client);
   return status;
}
