
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* profile; } ;
struct TYPE_10__ {TYPE_1__* format; } ;
struct TYPE_9__ {int eLevel; int eProfile; } ;
struct TYPE_8__ {int level; int profile; } ;
struct TYPE_7__ {int encoding; } ;
typedef TYPE_3__ OMX_VIDEO_PARAM_PROFILELEVELTYPE ;
typedef int OMX_VIDEO_CODINGTYPE ;
typedef scalar_t__ OMX_PTR ;
typedef int MMAL_STATUS_T ;
typedef TYPE_4__ MMAL_PORT_T ;
typedef TYPE_5__ MMAL_PARAMETER_VIDEO_PROFILE_T ;
typedef int MMAL_PARAMETER_HEADER_T ;
typedef int MMALOMX_PARAM_TRANSLATION_T ;
typedef scalar_t__ MMALOMX_PARAM_MAPPING_DIRECTION ;


 scalar_t__ MMALOMX_PARAM_MAPPING_TO_MMAL ;
 int MMAL_PARAM_UNUSED (int const*) ;
 int MMAL_SUCCESS ;
 int mmalil_encoding_to_omx_video_coding (int ) ;
 int mmalil_omx_video_level_to_mmal (int ,int ) ;
 int mmalil_omx_video_profile_to_mmal (int ,int ) ;
 int mmalil_video_level_to_omx (int ) ;
 int mmalil_video_profile_to_omx (int ) ;

__attribute__((used)) static MMAL_STATUS_T mmalomx_param_list_supported_profiles(MMALOMX_PARAM_MAPPING_DIRECTION dir,
   const MMALOMX_PARAM_TRANSLATION_T *xlat, unsigned int index,
   MMAL_PARAMETER_HEADER_T *mmal_param, OMX_PTR omx_param, MMAL_PORT_T *mmal_port)
{
   OMX_VIDEO_PARAM_PROFILELEVELTYPE *omx = (OMX_VIDEO_PARAM_PROFILELEVELTYPE *)omx_param;
   MMAL_PARAMETER_VIDEO_PROFILE_T *mmal = (MMAL_PARAMETER_VIDEO_PROFILE_T *)mmal_param;
   MMAL_PARAM_UNUSED(xlat);

   if (dir == MMALOMX_PARAM_MAPPING_TO_MMAL)
   {
      OMX_VIDEO_CODINGTYPE coding = mmalil_encoding_to_omx_video_coding(mmal_port->format->encoding);
      mmal->profile[index].profile = mmalil_omx_video_profile_to_mmal(omx->eProfile, coding);
      mmal->profile[index].level = mmalil_omx_video_level_to_mmal(omx->eLevel, coding);
   }
   else
   {
      omx->eProfile = mmalil_video_profile_to_omx(mmal->profile[index].profile);
      omx->eLevel = mmalil_video_level_to_omx(mmal->profile[index].level);
   }

   return MMAL_SUCCESS;
}
