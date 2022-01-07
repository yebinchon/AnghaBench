
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_9__ {TYPE_1__* priv; } ;
typedef TYPE_2__ VC_CONTAINER_TRACK_T ;
struct TYPE_10__ {scalar_t__ payload_type; } ;
typedef TYPE_3__ VC_CONTAINER_TRACK_MODULE_T ;
typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
typedef int VC_CONTAINERS_LIST_T ;
struct TYPE_8__ {TYPE_3__* module; } ;


 scalar_t__ IS_DYNAMIC_TYPE (scalar_t__) ;
 scalar_t__ IS_STATIC_AUDIO_TYPE (scalar_t__) ;
 scalar_t__ IS_STATIC_VIDEO_TYPE (scalar_t__) ;
 int VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ;
 int decode_dynamic_type (int *,TYPE_2__*,int const*) ;
 int decode_static_audio_type (int *,TYPE_2__*,int const*,scalar_t__) ;
 int decode_static_video_type (int *,TYPE_2__*,int const*,scalar_t__) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T decode_payload_type(VC_CONTAINER_T *p_ctx,
      VC_CONTAINER_TRACK_T *track,
      const VC_CONTAINERS_LIST_T *param_list,
      uint32_t payload_type)
{
   VC_CONTAINER_TRACK_MODULE_T *module = track->priv->module;
   VC_CONTAINER_STATUS_T status;

   if (IS_STATIC_AUDIO_TYPE(payload_type))
      status = decode_static_audio_type(p_ctx, track, param_list, payload_type);
   else if (IS_STATIC_VIDEO_TYPE(payload_type))
      status = decode_static_video_type(p_ctx, track, param_list, payload_type);
   else if (IS_DYNAMIC_TYPE(payload_type))
      status = decode_dynamic_type(p_ctx, track, param_list);
   else
      status = VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;

   module->payload_type = (uint8_t)payload_type;

   return status;
}
