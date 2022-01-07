
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int control; } ;
struct TYPE_8__ {TYPE_1__* format; } ;
struct TYPE_7__ {int nTargetBitrate; int eControlRate; } ;
struct TYPE_6__ {int bitrate; } ;
typedef TYPE_2__ OMX_VIDEO_PARAM_BITRATETYPE ;
typedef scalar_t__ OMX_PTR ;
typedef int MMAL_STATUS_T ;
typedef TYPE_3__ MMAL_PORT_T ;
typedef TYPE_4__ MMAL_PARAMETER_VIDEO_RATECONTROL_T ;
typedef int MMAL_PARAMETER_HEADER_T ;
typedef int MMALOMX_PARAM_TRANSLATION_T ;
typedef scalar_t__ MMALOMX_PARAM_MAPPING_DIRECTION ;


 scalar_t__ MMALOMX_PARAM_MAPPING_TO_MMAL ;
 int MMAL_PARAM_UNUSED (int const*) ;
 int MMAL_SUCCESS ;
 int mmalil_omx_video_ratecontrol_to_mmal (int ) ;
 int mmalil_video_ratecontrol_to_omx (int ) ;

__attribute__((used)) static MMAL_STATUS_T mmalomx_param_custom_ratecontrol(MMALOMX_PARAM_MAPPING_DIRECTION dir,
   const MMALOMX_PARAM_TRANSLATION_T *xlat,
   MMAL_PARAMETER_HEADER_T *mmal_param, OMX_PTR omx_param, MMAL_PORT_T *mmal_port)
{
   OMX_VIDEO_PARAM_BITRATETYPE *omx = (OMX_VIDEO_PARAM_BITRATETYPE *)omx_param;
   MMAL_PARAMETER_VIDEO_RATECONTROL_T *mmal = (MMAL_PARAMETER_VIDEO_RATECONTROL_T *)mmal_param;
   MMAL_PARAM_UNUSED(xlat);

   if (dir == MMALOMX_PARAM_MAPPING_TO_MMAL)
   {
      mmal->control = mmalil_omx_video_ratecontrol_to_mmal(omx->eControlRate);

   }
   else
   {
      omx->eControlRate = mmalil_video_ratecontrol_to_omx(mmal->control);
      omx->nTargetBitrate = mmal_port->format->bitrate;
   }

   return MMAL_SUCCESS;
}
