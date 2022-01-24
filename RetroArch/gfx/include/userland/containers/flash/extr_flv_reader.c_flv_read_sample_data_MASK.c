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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  VC_CONTAINER_T ;
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_3__ {unsigned int data_size; unsigned int data_offset; scalar_t__ status; } ;
typedef  TYPE_1__ FLV_READER_STATE_T ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC3( VC_CONTAINER_T *p_ctx,
   FLV_READER_STATE_T *state, uint8_t *data, unsigned int *data_size )
{
   unsigned int size = state->data_size - state->data_offset;

   if(state->status != VC_CONTAINER_SUCCESS) return state->status;

   if(data_size && *data_size < size) size = *data_size;

   if(!data) size = FUNC1(p_ctx, size);
   else size = FUNC0(p_ctx, data, size);
   state->data_offset += size;

   if(data_size) *data_size = size;
   state->status = FUNC2(p_ctx);

   return state->status;
}