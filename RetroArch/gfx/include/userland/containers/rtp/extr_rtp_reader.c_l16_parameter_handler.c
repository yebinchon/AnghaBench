
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


struct TYPE_12__ {TYPE_4__* priv; TYPE_2__* format; } ;
typedef TYPE_5__ VC_CONTAINER_TRACK_T ;
typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_13__ {int sample_rate; int channels; int bits_per_sample; int block_align; } ;
typedef TYPE_6__ VC_CONTAINER_AUDIO_FORMAT_T ;
typedef int VC_CONTAINERS_LIST_T ;
struct TYPE_11__ {TYPE_3__* module; } ;
struct TYPE_10__ {int timestamp_clock; int payload_handler; } ;
struct TYPE_9__ {TYPE_1__* type; } ;
struct TYPE_8__ {TYPE_6__ audio; } ;


 int CHANNELS_NAME ;
 int RATE_NAME ;
 int VC_CONTAINER_ERROR_FORMAT_INVALID ;
 int VC_CONTAINER_PARAM_UNUSED (int *) ;
 int VC_CONTAINER_SUCCESS ;
 int l16_payload_handler ;
 int rtp_get_parameter_u32 (int const*,int ,int*) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T l16_parameter_handler(VC_CONTAINER_T *p_ctx,
      VC_CONTAINER_TRACK_T *track,
      const VC_CONTAINERS_LIST_T *params)
{
   VC_CONTAINER_AUDIO_FORMAT_T *audio = &track->format->type->audio;

   VC_CONTAINER_PARAM_UNUSED(p_ctx);


   if (!rtp_get_parameter_u32(params, RATE_NAME, &audio->sample_rate))
      return VC_CONTAINER_ERROR_FORMAT_INVALID;
   if (!rtp_get_parameter_u32(params, CHANNELS_NAME, &audio->channels))
      audio->channels = 1;
   audio->bits_per_sample = 16;
   audio->block_align = audio->channels * 2;
   track->priv->module->timestamp_clock = audio->sample_rate;
   track->priv->module->payload_handler = l16_payload_handler;



   return VC_CONTAINER_SUCCESS;
}
