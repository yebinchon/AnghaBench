
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_10__ {TYPE_3__* format; TYPE_2__* priv; } ;
typedef TYPE_4__ VC_CONTAINER_TRACK_T ;
typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
typedef scalar_t__ VC_CONTAINER_ES_TYPE_T ;
typedef int VC_CONTAINERS_LIST_T ;
struct TYPE_11__ {int stream_type; } ;
struct TYPE_9__ {scalar_t__ es_type; } ;
struct TYPE_8__ {TYPE_1__* module; } ;
struct TYPE_7__ {scalar_t__ extra; } ;
typedef TYPE_5__ MP4_PAYLOAD_T ;


 int LOG_ERROR (int *,char*,int) ;

 int VC_CONTAINER_ERROR_FORMAT_INVALID ;
 scalar_t__ VC_CONTAINER_ES_TYPE_AUDIO ;
 int VC_CONTAINER_SUCCESS ;
 int rtp_get_parameter_u32 (int const*,char*,int*) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mp4_get_stream_type(VC_CONTAINER_T *p_ctx,
      VC_CONTAINER_TRACK_T *track,
      const VC_CONTAINERS_LIST_T *params)
{
   MP4_PAYLOAD_T *extra = (MP4_PAYLOAD_T *)track->priv->module->extra;
   uint32_t stream_type;
   VC_CONTAINER_ES_TYPE_T expected_es_type;

   if (!rtp_get_parameter_u32(params, "streamType", &stream_type))
      return VC_CONTAINER_ERROR_FORMAT_INVALID;

   switch (stream_type)
   {
   case 128:
      extra->stream_type = 128;
      expected_es_type = VC_CONTAINER_ES_TYPE_AUDIO;
      break;
   default:
      LOG_ERROR(p_ctx, "Unsupported MPEG-4 stream type: %u", stream_type);
      return VC_CONTAINER_ERROR_FORMAT_INVALID;
   }

   if (track->format->es_type != expected_es_type)
      return VC_CONTAINER_ERROR_FORMAT_INVALID;

   return VC_CONTAINER_SUCCESS;
}
