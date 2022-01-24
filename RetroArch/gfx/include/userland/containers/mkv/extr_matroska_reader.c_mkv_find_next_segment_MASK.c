#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* int64_t ;
typedef  int /*<<< orphan*/  VC_CONTAINER_T ;
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_5__ {size_t level; TYPE_1__* levels; } ;
struct TYPE_4__ {scalar_t__ id; void* size; void* offset; } ;
typedef  TYPE_2__ MKV_READER_STATE_T ;
typedef  int /*<<< orphan*/  MKV_ELEMENT_T ;
typedef  scalar_t__ MKV_ELEMENT_ID_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MKV_ELEMENT_ID_INVALID ; 
 scalar_t__ MKV_ELEMENT_ID_SEGMENT ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 int /*<<< orphan*/ * mkv_cluster_elements_list ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC5(VC_CONTAINER_T *p_ctx,
      MKV_READER_STATE_T *state)
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   int64_t element_size, element_offset;
   MKV_ELEMENT_ID_T id;

   /* Skip all elements until we find the next segment */
   do
   {
      MKV_ELEMENT_T *element = mkv_cluster_elements_list;

      status = FUNC4(p_ctx, FUNC0(-1), &id,
            &element_size, MKV_ELEMENT_ID_INVALID, &element);

      element_offset = FUNC1(p_ctx);
      if(status != VC_CONTAINER_SUCCESS) return status;
      if(id == MKV_ELEMENT_ID_SEGMENT) break;

      status = FUNC3(p_ctx, element, element_size, FUNC0(-1));
   } while (status == VC_CONTAINER_SUCCESS && FUNC2(p_ctx) == VC_CONTAINER_SUCCESS);

   if(FUNC2(p_ctx) != VC_CONTAINER_SUCCESS)
      return FUNC2(p_ctx);

   state->level++;
   state->levels[state->level].offset = element_offset;
   state->levels[state->level].size = element_size;
   state->levels[state->level].id = id;
   return VC_CONTAINER_SUCCESS;
}