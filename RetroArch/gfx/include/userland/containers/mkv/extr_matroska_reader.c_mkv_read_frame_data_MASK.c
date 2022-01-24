#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
struct TYPE_6__ {size_t level; scalar_t__ lacing_current_size; scalar_t__ header_size; TYPE_1__* levels; int /*<<< orphan*/  header_data; scalar_t__ lacing_num_frames; } ;
struct TYPE_5__ {scalar_t__ size; scalar_t__ data_start; scalar_t__ data_offset; } ;
typedef  TYPE_2__ MKV_READER_STATE_T ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC5(VC_CONTAINER_T *p_ctx,
      MKV_READER_STATE_T *state, uint8_t *p_data, uint32_t *pi_length)
{
   uint64_t size;
   uint32_t header_size;

   size = state->levels[state->level].size - state->levels[state->level].data_start -
      state->levels[state->level].data_offset;

   /* Special case for lacing */
   if(state->lacing_num_frames)
   {
      size = state->lacing_current_size - state->levels[state->level].data_offset;

      if(!p_data)
      {
         size = FUNC1(p_ctx, size);
         state->levels[state->level].data_offset += size;
         return FUNC2(p_ctx);
      }
   }

   size += state->header_size;

   if(!p_data) return FUNC4(p_ctx, state);
   if(size > *pi_length) size = *pi_length;

   header_size = state->header_size;
   if(header_size)
   {
      if(header_size > size) header_size = size;
      FUNC3(p_data, state->header_data, header_size);
      state->header_size -= header_size;
      state->header_data += header_size;
      size -= header_size;
   }

   size = FUNC0(p_ctx, p_data + header_size, size);
   state->levels[state->level].data_offset += size;
   *pi_length = size + header_size;

   return FUNC2(p_ctx);
}