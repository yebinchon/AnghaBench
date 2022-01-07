
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMAL_STATUS_T ;


 int LOG_ERROR (char*) ;
 int MMAL_EIO ;
 int MMAL_SUCCESS ;
 int mmal_vc_payload_list_init () ;
 scalar_t__ vcsm_init () ;

MMAL_STATUS_T mmal_vc_shm_init(void)
{
   mmal_vc_payload_list_init();
   return MMAL_SUCCESS;
}
