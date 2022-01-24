#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_3__* priv; TYPE_1__* format; } ;
typedef  TYPE_4__ VC_CONTAINER_TRACK_T ;
typedef  int /*<<< orphan*/  const VC_CONTAINER_T ;
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;
typedef  int /*<<< orphan*/  VC_CONTAINERS_LIST_T ;
struct TYPE_13__ {int /*<<< orphan*/  flags; } ;
struct TYPE_11__ {TYPE_2__* module; } ;
struct TYPE_10__ {int /*<<< orphan*/  timestamp_clock; int /*<<< orphan*/  payload_handler; TYPE_5__* extra; } ;
struct TYPE_9__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_5__ H264_PAYLOAD_T ;

/* Variables and functions */
 int /*<<< orphan*/  H264F_NEXT_PACKET_IS_START ; 
 int /*<<< orphan*/  H264_TIMESTAMP_CLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  VC_CONTAINER_ES_FORMAT_FLAG_FRAMED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,TYPE_4__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  h264_payload_handler ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 

VC_CONTAINER_STATUS_T FUNC7(VC_CONTAINER_T *p_ctx,
      VC_CONTAINER_TRACK_T *track,
      const VC_CONTAINERS_LIST_T *params)
{
   H264_PAYLOAD_T *extra;
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;

   FUNC1(p_ctx);
   FUNC1(params);

   /* See RFC3984, section 8.1, for parameter names and details. */
   extra = (H264_PAYLOAD_T *)FUNC5(sizeof(H264_PAYLOAD_T));
   if (!extra)
      return VC_CONTAINER_ERROR_OUT_OF_MEMORY;
   track->priv->module->extra = extra;
   FUNC6(extra, 0, sizeof(H264_PAYLOAD_T));

   /* Mandatory parameters */
   status = FUNC4(p_ctx, track, params);
   if (status != VC_CONTAINER_SUCCESS) return status;

   /* Unsupported parameters */
   status = FUNC2(p_ctx, params);
   if (status != VC_CONTAINER_SUCCESS) return status;

   /* Optional parameters */
   status = FUNC3(p_ctx, params);
   if (status != VC_CONTAINER_SUCCESS) return status;

   track->priv->module->payload_handler = h264_payload_handler;
   FUNC0(extra->flags, H264F_NEXT_PACKET_IS_START);

   track->format->flags |= VC_CONTAINER_ES_FORMAT_FLAG_FRAMED;
   track->priv->module->timestamp_clock = H264_TIMESTAMP_CLOCK;

   return status;
}