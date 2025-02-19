
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* fps_high; void* fps_low; } ;
struct TYPE_3__ {void* xFramerateHigh; void* xFramerateLow; } ;
typedef scalar_t__ OMX_PTR ;
typedef TYPE_1__ OMX_PARAM_BRCMFRAMERATERANGETYPE ;
typedef int MMAL_STATUS_T ;
typedef int MMAL_PARAMETER_HEADER_T ;
typedef TYPE_2__ MMAL_PARAMETER_FPS_RANGE_T ;
typedef scalar_t__ MMALOMX_PARAM_MAPPING_DIRECTION ;


 scalar_t__ MMALOMX_PARAM_MAPPING_TO_MMAL ;
 int MMAL_SUCCESS ;
 void* mmal_rational_from_fixed_16_16 (void*) ;
 void* mmal_rational_to_fixed_16_16 (void*) ;

__attribute__((used)) static MMAL_STATUS_T mmalomx_param_mapping_fps_range(MMALOMX_PARAM_MAPPING_DIRECTION dir,
   MMAL_PARAMETER_HEADER_T *mmal_param, OMX_PTR omx_param)
{
   OMX_PARAM_BRCMFRAMERATERANGETYPE *omx = (OMX_PARAM_BRCMFRAMERATERANGETYPE *)omx_param;
   MMAL_PARAMETER_FPS_RANGE_T *mmal = (MMAL_PARAMETER_FPS_RANGE_T *)mmal_param;

   if (dir == MMALOMX_PARAM_MAPPING_TO_MMAL)
   {
      mmal->fps_low = mmal_rational_from_fixed_16_16(omx->xFramerateLow);
      mmal->fps_high = mmal_rational_from_fixed_16_16(omx->xFramerateHigh);
   }
   else
   {
      omx->xFramerateLow = mmal_rational_to_fixed_16_16(mmal->fps_low);
      omx->xFramerateHigh = mmal_rational_to_fixed_16_16(mmal->fps_high);
   }

   return MMAL_SUCCESS;
}
