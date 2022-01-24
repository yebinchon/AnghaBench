#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_2__* priv; } ;
typedef  TYPE_3__ VC_CONTAINER_TRACK_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_T ;
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;
typedef  int /*<<< orphan*/  VC_CONTAINERS_LIST_T ;
struct TYPE_15__ {scalar_t__ size_length; scalar_t__ constant_size; scalar_t__ auxiliary_length; scalar_t__ constant_duration; scalar_t__ object_type; scalar_t__ dts_delta_length; scalar_t__ cts_delta_length; scalar_t__ index_delta_length; scalar_t__ index_length; } ;
struct TYPE_13__ {TYPE_1__* module; } ;
struct TYPE_12__ {int /*<<< orphan*/  payload_handler; TYPE_4__* extra; } ;
typedef  TYPE_4__ MP4_PAYLOAD_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_INVALID ; 
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_MEMORY ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  mp4_payload_handler ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,char*,scalar_t__*) ; 

VC_CONTAINER_STATUS_T FUNC9(VC_CONTAINER_T *p_ctx,
      VC_CONTAINER_TRACK_T *track,
      const VC_CONTAINERS_LIST_T *params)
{
   MP4_PAYLOAD_T *extra;
   VC_CONTAINER_STATUS_T status;

   /* See RFC3640, section 4.1, for parameter names and details. */
   extra = (MP4_PAYLOAD_T *)FUNC1(sizeof(MP4_PAYLOAD_T));
   if (!extra)
      return VC_CONTAINER_ERROR_OUT_OF_MEMORY;
   track->priv->module->extra = extra;
   FUNC2(extra, 0, sizeof(MP4_PAYLOAD_T));

   /* Mandatory parameters */
   status = FUNC7(p_ctx, track, params);
   if (status != VC_CONTAINER_SUCCESS) return status;

   status = FUNC5(p_ctx, track, params);
   if (status != VC_CONTAINER_SUCCESS) return status;

   status = FUNC6(p_ctx, track, params);
   if (status != VC_CONTAINER_SUCCESS) return status;

   /* Unsupported parameters */
   status = FUNC4(p_ctx, track, params);
   if (status != VC_CONTAINER_SUCCESS) return status;

   /* Optional parameters */
   FUNC8(params, "sizeLength", &extra->size_length);
   FUNC8(params, "indexLength", &extra->index_length);
   FUNC8(params, "indexDeltaLength", &extra->index_delta_length);
   FUNC8(params, "CTSDeltaLength", &extra->cts_delta_length);
   FUNC8(params, "DTSDeltaLength", &extra->dts_delta_length);
   FUNC8(params, "objectType", &extra->object_type);
   FUNC8(params, "constantSize", &extra->constant_size);
   FUNC8(params, "constantDuration", &extra->constant_duration);
   FUNC8(params, "auxiliaryDataSizeLength", &extra->auxiliary_length);

   if (extra->constant_size && extra->size_length)
   {
      FUNC0(p_ctx, "MPEG4: constantSize and sizeLength cannot both be set.");
      return VC_CONTAINER_ERROR_FORMAT_INVALID;
   }

   status = FUNC3(p_ctx, track);
   if (status != VC_CONTAINER_SUCCESS) return status;

   track->priv->module->payload_handler = mp4_payload_handler;

   return VC_CONTAINER_SUCCESS;
}