#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_14__ {TYPE_3__* format; TYPE_2__* priv; } ;
typedef  TYPE_4__ VC_CONTAINER_TRACK_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_T ;
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_BITS_T ;
typedef  int /*<<< orphan*/  VC_CONTAINERS_LIST_T ;
struct TYPE_16__ {int stream_type; } ;
struct TYPE_15__ {char* name; int /*<<< orphan*/  value; } ;
struct TYPE_13__ {int extradata_size; } ;
struct TYPE_12__ {int /*<<< orphan*/ * extradata; TYPE_1__* module; } ;
struct TYPE_11__ {scalar_t__ extra; } ;
typedef  TYPE_5__ PARAMETER_T ;
typedef  TYPE_6__ MP4_PAYLOAD_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
#define  MPEG4_AUDIO_STREAM 128 
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_INVALID ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,TYPE_5__*) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC7(VC_CONTAINER_T *p_ctx,
      VC_CONTAINER_TRACK_T *track,
      const VC_CONTAINERS_LIST_T *params)
{
   MP4_PAYLOAD_T *extra = (MP4_PAYLOAD_T *)track->priv->module->extra;
   PARAMETER_T param;
   uint32_t config_len;
   VC_CONTAINER_STATUS_T status;
   uint8_t *config;
   VC_CONTAINER_BITS_T bit_stream;

   param.name = "config";
   if (!FUNC6(params, &param) || !param.value)
   {
      FUNC1(p_ctx, "MPEG-4: config parameter missing");
      return VC_CONTAINER_ERROR_FORMAT_INVALID;
   }

   config_len = FUNC4(param.value);
   if (config_len & 1)
   {
      FUNC1(p_ctx, "MPEG-4: config parameter invalid");
      return VC_CONTAINER_ERROR_FORMAT_INVALID;
   }
   config_len /= 2;

   /* Copy AudioSpecificConfig into track extradata, to be decoded by client */
   status = FUNC5(p_ctx, track, config_len);
   if(status != VC_CONTAINER_SUCCESS) return status;

   config = track->priv->extradata;
   track->format->extradata_size = config_len;
   FUNC2(param.value, config, config_len);

   /* Decode config locally, to determine sample rate, etc. */
   FUNC0(p_ctx, &bit_stream, config, config_len);

   switch (extra->stream_type)
   {
   case MPEG4_AUDIO_STREAM:
      if (!FUNC3(p_ctx, track, &bit_stream))
         return VC_CONTAINER_ERROR_FORMAT_INVALID;
      break;
   default:
      /* Other stream types not yet supported */
      FUNC1(p_ctx, "MPEG-4: stream type %d not supported", extra->stream_type);
      return VC_CONTAINER_ERROR_FORMAT_INVALID;
   }

   return VC_CONTAINER_SUCCESS;
}