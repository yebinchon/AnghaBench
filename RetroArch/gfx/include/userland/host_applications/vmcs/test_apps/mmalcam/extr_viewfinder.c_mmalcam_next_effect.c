
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int image_fx ;
struct TYPE_9__ {int control; } ;
struct TYPE_7__ {int member_1; int member_0; } ;
struct TYPE_8__ {int value; int hdr; int member_1; TYPE_1__ member_0; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef int MMAL_PARAM_IMAGEFX_T ;
typedef TYPE_2__ MMAL_PARAMETER_IMAGEFX_T ;
typedef TYPE_3__ MMAL_COMPONENT_T ;
typedef int MMAL_BOOL_T ;


 int LOG_ERROR (char*,scalar_t__,...) ;
 int MMAL_FALSE ;
 int MMAL_PARAMETER_IMAGE_EFFECT ;



 scalar_t__ MMAL_SUCCESS ;
 int MMAL_TRUE ;
 unsigned int countof (int const*) ;
 scalar_t__ memcmp (TYPE_2__*,TYPE_2__*,int) ;
 scalar_t__ mmal_port_parameter_get (int ,int *) ;
 scalar_t__ mmal_port_parameter_set (int ,int *) ;

__attribute__((used)) static MMAL_BOOL_T mmalcam_next_effect(MMAL_COMPONENT_T *camera)
{
   static const MMAL_PARAM_IMAGEFX_T effects[] = {
               129,
               130,
               128
            };
   static unsigned int index;
   MMAL_PARAMETER_IMAGEFX_T image_fx = {{ MMAL_PARAMETER_IMAGE_EFFECT, sizeof(image_fx)},0};
   MMAL_PARAMETER_IMAGEFX_T image_fx_check = {{ MMAL_PARAMETER_IMAGE_EFFECT, sizeof(image_fx)},0};
   MMAL_STATUS_T result;

   index++;
   if(index >= countof(effects))
      index = 0;
   image_fx.value = effects[index];
   result = mmal_port_parameter_set(camera->control, &image_fx.hdr);
   if (result != MMAL_SUCCESS)
   {
      LOG_ERROR("Failed to set image effect, %d", result);
      return MMAL_FALSE;
   }
   result = mmal_port_parameter_get(camera->control, &image_fx_check.hdr);
   if (result != MMAL_SUCCESS)
   {
      LOG_ERROR("Failed to retrieve image effect, %d", result);
      return MMAL_FALSE;
   }
   if (memcmp(&image_fx, &image_fx_check, sizeof(image_fx)) != 0)
   {
      LOG_ERROR("Image effect set (%d) was not retrieved (%d)", image_fx.value, image_fx_check.value);
      return MMAL_FALSE;
   }
   return MMAL_TRUE;
}
