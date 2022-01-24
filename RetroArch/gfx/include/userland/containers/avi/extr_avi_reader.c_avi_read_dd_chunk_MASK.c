#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
struct TYPE_3__ {int extra_chunk_data_len; scalar_t__ extra_chunk_track_num; scalar_t__ extra_chunk_data_offs; int /*<<< orphan*/  extra_chunk_data; } ;
typedef  TYPE_1__ AVI_TRACK_STREAM_STATE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_CONTINUE ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_FORMAT_INVALID ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ; 
 int /*<<< orphan*/  VC_CONTAINER_SUCCESS ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC4( VC_CONTAINER_T *p_ctx,
   AVI_TRACK_STREAM_STATE_T *p_state, uint16_t data_type, uint32_t chunk_size,
   uint16_t track_num )
{
   if (data_type == FUNC1('d','d'))
   {
      if (p_state->extra_chunk_data_len ||
          chunk_size > sizeof(p_state->extra_chunk_data))
      {
         FUNC2(p_ctx, "cannot handle multiple consecutive 'dd' chunks");
         return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
      }
      if(FUNC3(p_ctx, p_state->extra_chunk_data, chunk_size) != chunk_size)
         return VC_CONTAINER_ERROR_FORMAT_INVALID;

      FUNC0(p_ctx);
      p_state->extra_chunk_track_num = track_num;
      p_state->extra_chunk_data_len = chunk_size;
      p_state->extra_chunk_data_offs = 0;

      return VC_CONTAINER_ERROR_CONTINUE;
   }
   else if (p_state->extra_chunk_data_len &&
      p_state->extra_chunk_track_num != track_num)
   {
      FUNC2(p_ctx, "dropping data from '%02ddd' chunk, not for this track (%d)",
         p_state->extra_chunk_track_num, track_num);
      p_state->extra_chunk_data_len = 0;
   }

   return VC_CONTAINER_SUCCESS;
}