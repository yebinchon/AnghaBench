#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_19__ {TYPE_4__** tracks; } ;
typedef  TYPE_5__ VC_CONTAINER_T ;
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_20__ {int data_offset; scalar_t__ data_size; scalar_t__ data_position; scalar_t__ tag_position; } ;
struct TYPE_18__ {TYPE_3__* format; TYPE_2__* priv; } ;
struct TYPE_17__ {scalar_t__ es_type; } ;
struct TYPE_16__ {TYPE_1__* module; } ;
struct TYPE_15__ {TYPE_6__* state; } ;
typedef  TYPE_6__ FLV_READER_STATE_T ;

/* Variables and functions */
 int FLV_FLAG_DISCARD ; 
 int FLV_FLAG_KEYFRAME ; 
 scalar_t__ FUNC0 (TYPE_5__*,scalar_t__) ; 
 size_t FUNC1 (TYPE_5__*,int) ; 
 scalar_t__ FUNC2 (TYPE_5__*) ; 
 scalar_t__ FUNC3 (TYPE_5__*) ; 
 scalar_t__ VC_CONTAINER_ES_TYPE_VIDEO ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 scalar_t__ FUNC5 (TYPE_5__*,int*,int*,int*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int,scalar_t__,int,scalar_t__,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (TYPE_5__*,int,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC8(VC_CONTAINER_T *p_ctx, int track, int *p_size,
   uint32_t *p_timestamp, int *p_flags, int b_keyframe, int b_extra_check)
{
   int frame_track, prev_size, size, flags;
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   FLV_READER_STATE_T *state = p_ctx->tracks[track]->priv->module->state;
   uint32_t timestamp;
   int64_t position;
   FUNC4(b_extra_check);

   /* Seek to the next tag in the stream or the current position
    * if none of its data has been consumed */
   position = state->tag_position;
   if(state->data_offset)
      position = state->data_position + state->data_size;
   status = FUNC0(p_ctx, position);
   if(status != VC_CONTAINER_SUCCESS) return status;

   /* Look for the next frame we want */
   while (status == VC_CONTAINER_SUCCESS)
   {
      position = FUNC2(p_ctx);
      status = FUNC5(p_ctx, &prev_size, &frame_track,
                                     &size, &timestamp, &flags, 0);
      if(status != VC_CONTAINER_SUCCESS) break;

      if(flags & FLV_FLAG_DISCARD) goto skip;
      if(frame_track != track) goto skip;

      if(b_keyframe && p_ctx->tracks[track]->format->es_type == VC_CONTAINER_ES_TYPE_VIDEO &&
         !(flags & FLV_FLAG_KEYFRAME)) goto skip;

      if(FUNC7(p_ctx, track, &size, &timestamp) != VC_CONTAINER_SUCCESS)
         goto skip;

      /* We have what we need */
      FUNC6(p_ctx, track, position, prev_size, FUNC2(p_ctx),
                                size, timestamp, flags);
      break;

   skip:
      FUNC6(p_ctx, track, position, prev_size, FUNC2(p_ctx),
                                size, timestamp, 0);
      state->data_offset = size; /* consume data */

      if(FUNC1(p_ctx, size) != (size_t)size) status = FUNC3(p_ctx);
   }

   if(!status)
   {
      if(p_size) *p_size = size;
      if(p_timestamp) *p_timestamp = timestamp;
      if(p_flags) *p_flags = flags;
   }

   return status;
}