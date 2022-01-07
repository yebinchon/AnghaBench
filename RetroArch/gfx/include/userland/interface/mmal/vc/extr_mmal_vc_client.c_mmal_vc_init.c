
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMAL_STATUS_T ;


 int mmal_vc_init_fd (int) ;

MMAL_STATUS_T mmal_vc_init(void)
{
   return mmal_vc_init_fd(-1);
}
