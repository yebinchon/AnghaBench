
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int mmal_mode; } ;
struct TYPE_8__ {int mmal_mode; } ;
struct TYPE_7__ {int mmal_mode; } ;
struct TYPE_6__ {int u; int v; int enable; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ MMAL_PARAM_COLOURFX_T ;
typedef int MMAL_COMPONENT_T ;


 int MMAL_PARAM_AWBMODE_AUTO ;
 int MMAL_PARAM_EXPOSUREMODE_AUTO ;
 int MMAL_PARAM_IMAGEFX_NONE ;
 TYPE_5__* awb_map ;
 int awb_map_size ;
 TYPE_4__* exposure_map ;
 int exposure_map_size ;
 TYPE_3__* imagefx_map ;
 int imagefx_map_size ;

 int raspicamcontrol_set_awb_mode (int *,int ) ;
 int raspicamcontrol_set_brightness (int *,int) ;
 int raspicamcontrol_set_colourFX (int *,TYPE_1__*) ;
 int raspicamcontrol_set_contrast (int *,int) ;
 int raspicamcontrol_set_exposure_compensation (int *,int) ;
 int raspicamcontrol_set_exposure_mode (int *,int ) ;
 int raspicamcontrol_set_flips (int *,int,int) ;
 int raspicamcontrol_set_imageFX (int *,int ) ;
 int raspicamcontrol_set_rotation (int *,int) ;
 int raspicamcontrol_set_saturation (int *,int) ;
 int raspicamcontrol_set_sharpness (int *,int) ;
 scalar_t__ update_cycle_parameter (int*,int,int,int) ;
 int vcos_assert (int *) ;

int raspicamcontrol_cycle_test(MMAL_COMPONENT_T *camera)
{
   static int parameter = 0;
   static int parameter_option = 128;

   vcos_assert(camera);



   if (parameter == 0)
   {

      if (update_cycle_parameter(&parameter_option, -100, 100, 10))
         raspicamcontrol_set_sharpness(camera, parameter_option);
      else
      {
         raspicamcontrol_set_sharpness(camera, 0);
         parameter++;
      }
   }
   else if (parameter == 1)
   {

      if (update_cycle_parameter(&parameter_option, -100, 100, 10))
         raspicamcontrol_set_contrast(camera, parameter_option);
      else
      {
         raspicamcontrol_set_contrast(camera, 0);
         parameter++;
      }
   }
   else if (parameter == 2)
   {

      if (update_cycle_parameter(&parameter_option, 0, 100, 10))
         raspicamcontrol_set_brightness(camera, parameter_option);
      else
      {
         raspicamcontrol_set_brightness(camera, 50);
         parameter++;
      }
   }
   else if (parameter == 3)
   {

      if (update_cycle_parameter(&parameter_option, -100, 100, 10))
         raspicamcontrol_set_saturation(camera, parameter_option);
      else
      {
         parameter++;
         raspicamcontrol_set_saturation(camera, 0);
      }
   }
   else if (parameter == 4)
   {

      if (update_cycle_parameter(&parameter_option, -10, 10, 4))
         raspicamcontrol_set_exposure_compensation(camera, parameter_option);
      else
      {
         raspicamcontrol_set_exposure_compensation(camera, 0);
         parameter++;
      }
   }
   else if (parameter == 5)
   {

      if (update_cycle_parameter(&parameter_option, 0, exposure_map_size, 1))
         raspicamcontrol_set_exposure_mode(camera, exposure_map[parameter_option].mmal_mode);
      else
      {
         raspicamcontrol_set_exposure_mode(camera, MMAL_PARAM_EXPOSUREMODE_AUTO);
         parameter++;
      }
   }
   else if (parameter == 6)
   {

      if (update_cycle_parameter(&parameter_option, 0, awb_map_size, 1))
         raspicamcontrol_set_awb_mode(camera, awb_map[parameter_option].mmal_mode);
      else
      {
         raspicamcontrol_set_awb_mode(camera, MMAL_PARAM_AWBMODE_AUTO);
         parameter++;
      }
   }
   if (parameter == 7)
   {

      if (update_cycle_parameter(&parameter_option, 0, imagefx_map_size, 1))
         raspicamcontrol_set_imageFX(camera, imagefx_map[parameter_option].mmal_mode);
      else
      {
         raspicamcontrol_set_imageFX(camera, MMAL_PARAM_IMAGEFX_NONE);
         parameter++;
      }
   }
   if (parameter == 8)
   {
      MMAL_PARAM_COLOURFX_T colfx = {0,0,0};
      switch (parameter_option)
      {
      case 128 :
         parameter_option = 1;
         colfx.u = 128;
         colfx.v = 128;
         break;
      case 1 :
         parameter_option = 2;
         colfx.u = 100;
         colfx.v = 200;
         break;
      case 2 :
         parameter_option = 128;
         colfx.enable = 0;
         parameter++;
         break;
      }
      raspicamcontrol_set_colourFX(camera, &colfx);
   }


   if (parameter == 9)
   {
      switch (parameter_option)
      {
      case 128:
         raspicamcontrol_set_rotation(camera, 90);
         parameter_option = 1;
         break;

      case 1 :
         raspicamcontrol_set_rotation(camera, 180);
         parameter_option = 2;
         break;

      case 2 :
         raspicamcontrol_set_rotation(camera, 270);
         parameter_option = 3;
         break;

      case 3 :
      {
         raspicamcontrol_set_rotation(camera, 0);
         raspicamcontrol_set_flips(camera, 1,0);
         parameter_option = 4;
         break;
      }
      case 4 :
      {
         raspicamcontrol_set_flips(camera, 0,1);
         parameter_option = 5;
         break;
      }
      case 5 :
      {
         raspicamcontrol_set_flips(camera, 1, 1);
         parameter_option = 6;
         break;
      }
      case 6 :
      {
         raspicamcontrol_set_flips(camera, 0, 0);
         parameter_option = 128;
         parameter++;
         break;
      }
      }
   }

   if (parameter == 10)
   {
      parameter = 1;
      return 0;
   }

   return 1;
}
