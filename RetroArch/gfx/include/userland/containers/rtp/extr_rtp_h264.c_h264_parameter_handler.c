
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {TYPE_3__* priv; TYPE_1__* format; } ;
typedef TYPE_4__ VC_CONTAINER_TRACK_T ;
typedef int const VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
typedef int VC_CONTAINERS_LIST_T ;
struct TYPE_13__ {int flags; } ;
struct TYPE_11__ {TYPE_2__* module; } ;
struct TYPE_10__ {int timestamp_clock; int payload_handler; TYPE_5__* extra; } ;
struct TYPE_9__ {int flags; } ;
typedef TYPE_5__ H264_PAYLOAD_T ;


 int H264F_NEXT_PACKET_IS_START ;
 int H264_TIMESTAMP_CLOCK ;
 int SET_BIT (int ,int ) ;
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 int VC_CONTAINER_ES_FORMAT_FLAG_FRAMED ;
 int VC_CONTAINER_PARAM_UNUSED (int const*) ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 scalar_t__ h264_check_unsupported_features (int const*,int const*) ;
 scalar_t__ h264_get_packetization_mode (int const*,int const*) ;
 scalar_t__ h264_get_sprop_parameter_sets (int const*,TYPE_4__*,int const*) ;
 int h264_payload_handler ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_5__*,int ,int) ;

VC_CONTAINER_STATUS_T h264_parameter_handler(VC_CONTAINER_T *p_ctx,
      VC_CONTAINER_TRACK_T *track,
      const VC_CONTAINERS_LIST_T *params)
{
   H264_PAYLOAD_T *extra;
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;

   VC_CONTAINER_PARAM_UNUSED(p_ctx);
   VC_CONTAINER_PARAM_UNUSED(params);


   extra = (H264_PAYLOAD_T *)malloc(sizeof(H264_PAYLOAD_T));
   if (!extra)
      return VC_CONTAINER_ERROR_OUT_OF_MEMORY;
   track->priv->module->extra = extra;
   memset(extra, 0, sizeof(H264_PAYLOAD_T));


   status = h264_get_sprop_parameter_sets(p_ctx, track, params);
   if (status != VC_CONTAINER_SUCCESS) return status;


   status = h264_check_unsupported_features(p_ctx, params);
   if (status != VC_CONTAINER_SUCCESS) return status;


   status = h264_get_packetization_mode(p_ctx, params);
   if (status != VC_CONTAINER_SUCCESS) return status;

   track->priv->module->payload_handler = h264_payload_handler;
   SET_BIT(extra->flags, H264F_NEXT_PACKET_IS_START);

   track->format->flags |= VC_CONTAINER_ES_FORMAT_FLAG_FRAMED;
   track->priv->module->timestamp_clock = H264_TIMESTAMP_CLOCK;

   return status;
}
