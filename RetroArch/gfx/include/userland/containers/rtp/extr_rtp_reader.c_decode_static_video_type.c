
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_12__ {scalar_t__ codec; int (* param_handler ) (int const*,TYPE_4__*,int const*) ;int payload_handler; } ;
typedef TYPE_3__ VIDEO_PAYLOAD_TYPE_DATA_T ;
struct TYPE_13__ {TYPE_2__* priv; TYPE_5__* format; } ;
typedef TYPE_4__ VC_CONTAINER_TRACK_T ;
typedef int const VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_14__ {scalar_t__ codec; int es_type; } ;
typedef TYPE_5__ VC_CONTAINER_ES_FORMAT_T ;
typedef int VC_CONTAINERS_LIST_T ;
struct TYPE_11__ {TYPE_1__* module; } ;
struct TYPE_10__ {int payload_handler; int timestamp_clock; } ;


 size_t FIRST_STATIC_VIDEO_TYPE ;
 int STATIC_VIDEO_TIMESTAMP_CLOCK ;
 scalar_t__ UNSUPPORTED_CODEC ;
 int VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ;
 int VC_CONTAINER_ES_TYPE_VIDEO ;
 int VC_CONTAINER_PARAM_UNUSED (int const*) ;
 int VC_CONTAINER_SUCCESS ;
 size_t countof (TYPE_3__*) ;
 TYPE_3__* static_video_payload_types ;
 int stub1 (int const*,TYPE_4__*,int const*) ;
 int vc_container_assert (int) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T decode_static_video_type(VC_CONTAINER_T *p_ctx,
      VC_CONTAINER_TRACK_T *track,
      const VC_CONTAINERS_LIST_T *param_list,
      uint32_t payload_type)
{
   VC_CONTAINER_ES_FORMAT_T *format = track->format;
   VIDEO_PAYLOAD_TYPE_DATA_T *data = &static_video_payload_types[payload_type - FIRST_STATIC_VIDEO_TYPE];

   VC_CONTAINER_PARAM_UNUSED(p_ctx);
   VC_CONTAINER_PARAM_UNUSED(param_list);

   vc_container_assert(payload_type >= FIRST_STATIC_VIDEO_TYPE);
   vc_container_assert(payload_type < FIRST_STATIC_VIDEO_TYPE + countof(static_video_payload_types));

   if (data->codec == UNSUPPORTED_CODEC)
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;

   format->es_type = VC_CONTAINER_ES_TYPE_VIDEO;
   format->codec = data->codec;
   track->priv->module->timestamp_clock = STATIC_VIDEO_TIMESTAMP_CLOCK;
   track->priv->module->payload_handler = data->payload_handler;

   if (data->param_handler)
      data->param_handler(p_ctx, track, param_list);

   return VC_CONTAINER_SUCCESS;
}
