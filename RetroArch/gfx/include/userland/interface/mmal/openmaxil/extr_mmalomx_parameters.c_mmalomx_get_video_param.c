
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int mmal_param ;
struct TYPE_13__ {int mmal; } ;
struct TYPE_11__ {int member_1; int member_0; } ;
struct TYPE_10__ {TYPE_4__ member_0; } ;
struct TYPE_9__ {int member_1; int member_0; } ;
struct TYPE_12__ {TYPE_1__* profile; int hdr; TYPE_3__ member_1; TYPE_2__ member_0; } ;
struct TYPE_8__ {int level; int profile; } ;
typedef int OMX_ERRORTYPE ;
typedef int MMAL_VIDEO_PROFILE_T ;
typedef int MMAL_VIDEO_LEVEL_T ;
typedef TYPE_5__ MMAL_PARAMETER_VIDEO_PROFILE_T ;
typedef TYPE_6__ MMALOMX_PORT_T ;


 int MMAL_PARAMETER_INTRAPERIOD ;
 int MMAL_PARAMETER_PROFILE ;
 scalar_t__ MMAL_SUCCESS ;
 int OMX_ErrorNone ;
 scalar_t__ mmal_port_parameter_get (int ,int *) ;
 int mmal_port_parameter_get_uint32 (int ,int ,scalar_t__*) ;
 scalar_t__ mmalil_video_level_to_omx (int ) ;
 scalar_t__ mmalil_video_profile_to_omx (int ) ;

__attribute__((used)) static OMX_ERRORTYPE mmalomx_get_video_param(MMALOMX_PORT_T *port,
   uint32_t *profile, uint32_t *level, uint32_t *intraperiod)
{
   MMAL_PARAMETER_VIDEO_PROFILE_T mmal_param = {{MMAL_PARAMETER_PROFILE, sizeof(mmal_param)},
      {{(MMAL_VIDEO_PROFILE_T)0, (MMAL_VIDEO_LEVEL_T)0}}};

   *profile = *level = *intraperiod = 0;

   mmal_port_parameter_get_uint32(port->mmal, MMAL_PARAMETER_INTRAPERIOD, intraperiod);

   if (mmal_port_parameter_get(port->mmal, &mmal_param.hdr) == MMAL_SUCCESS)
   {
      *profile = mmalil_video_profile_to_omx(mmal_param.profile[0].profile);
      *level = mmalil_video_level_to_omx(mmal_param.profile[0].level);
   }

   return OMX_ErrorNone;
}
