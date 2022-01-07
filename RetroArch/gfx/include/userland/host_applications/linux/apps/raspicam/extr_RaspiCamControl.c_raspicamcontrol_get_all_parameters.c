
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RASPICAM_CAMERA_PARAMETERS ;
typedef int MMAL_COMPONENT_T ;


 int vcos_assert (int *) ;

int raspicamcontrol_get_all_parameters(MMAL_COMPONENT_T *camera, RASPICAM_CAMERA_PARAMETERS *params)
{
   vcos_assert(camera);
   vcos_assert(params);

   if (!camera || !params)
      return 1;
   return 0;
}
