
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int default_mapping ;
struct TYPE_6__ {int member_7; int const member_6; int const member_5; int const member_4; int const member_3; int const member_2; int const member_1; int const member_0; } ;
typedef TYPE_1__ OMX_AUDIO_CHANNELTYPE ;
typedef int MMAL_STATUS_T ;


 unsigned int MMAL_COUNTOF (TYPE_1__ const**) ;
 int MMAL_EINVAL ;
 int MMAL_SUCCESS ;
 int memcpy (TYPE_1__*,TYPE_1__ const*,int) ;

MMAL_STATUS_T mmalil_omx_default_channel_mapping(OMX_AUDIO_CHANNELTYPE *channel_mapping, unsigned int nchannels)
{
   static const OMX_AUDIO_CHANNELTYPE default_mapping[][8] = {
      {131},
      {137},
      {135, 130},
      {135, 130, 137},
      {135, 130, 137,
         136},
      {135, 130, 137,
         133, 129},
      {135, 130, 137,
         134, 133, 129},
      {135, 130, 137,
         134, 133, 129,
         136},
      {135, 130, 137,
         134, 133, 129,
         132, 128}
   };

   if (!nchannels || nchannels >= MMAL_COUNTOF(default_mapping))
      return MMAL_EINVAL;

   memcpy(channel_mapping, default_mapping[nchannels],
      sizeof(default_mapping[0][0]) * nchannels);
   return MMAL_SUCCESS;
}
