#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VC_CONTAINER_T ;
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_8__ {size_t level; TYPE_1__* levels; scalar_t__ frame_duration; scalar_t__ seen_ref_block; } ;
struct TYPE_7__ {scalar_t__ id; } ;
typedef  TYPE_2__ MKV_READER_STATE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ MKV_ELEMENT_ID_BLOCK ; 
 scalar_t__ MKV_ELEMENT_ID_BLOCKGROUP ; 
 scalar_t__ MKV_ELEMENT_ID_CLUSTER ; 
 scalar_t__ MKV_ELEMENT_ID_SEGMENT ; 
 scalar_t__ MKV_ELEMENT_ID_SIMPLE_BLOCK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ VC_CONTAINER_ERROR_EOS ; 
 scalar_t__ VC_CONTAINER_ERROR_NOT_FOUND ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC6(VC_CONTAINER_T *p_ctx, MKV_READER_STATE_T *state)
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_ERROR_NOT_FOUND;

   do
   {
      if(state->level < 0)
      {
#ifdef ENABLE_MKV_EXTRA_LOGGING
         LOG_DEBUG(p_ctx, "find segment");
#endif
         status = FUNC4(p_ctx, state);
         if(status == VC_CONTAINER_SUCCESS)
         {
            FUNC1(p_ctx, "multi-segment files not supported");
            status = VC_CONTAINER_ERROR_EOS;
            break;
         }
      }
      if(state->levels[state->level].id == MKV_ELEMENT_ID_BLOCK ||
         state->levels[state->level].id == MKV_ELEMENT_ID_SIMPLE_BLOCK)
      {
         status = FUNC5(p_ctx, state);
      }
      if(state->levels[state->level].id == MKV_ELEMENT_ID_BLOCKGROUP)
      {
#ifdef ENABLE_MKV_EXTRA_LOGGING
         LOG_DEBUG(p_ctx, "find block");
#endif
         state->seen_ref_block = 0;
         state->frame_duration = 0;
         status = FUNC3(p_ctx, state, MKV_ELEMENT_ID_BLOCK);
         if(status == VC_CONTAINER_SUCCESS) break;

         if(status == VC_CONTAINER_ERROR_NOT_FOUND)
            status = FUNC5(p_ctx, state);
      }
      if(state->levels[state->level].id == MKV_ELEMENT_ID_CLUSTER)
      {
#ifdef ENABLE_MKV_EXTRA_LOGGING
         LOG_DEBUG(p_ctx, "find blockgroup or simpleblock");
#endif
         state->frame_duration = 0;
         status = FUNC3(p_ctx, state, MKV_ELEMENT_ID_BLOCKGROUP);
         if(status == VC_CONTAINER_SUCCESS &&
            state->levels[state->level].id == MKV_ELEMENT_ID_SIMPLE_BLOCK) break;
         if(status == VC_CONTAINER_ERROR_NOT_FOUND)
            status = FUNC5(p_ctx, state);
      }
      if(state->levels[state->level].id == MKV_ELEMENT_ID_SEGMENT)
      {
#ifdef ENABLE_MKV_EXTRA_LOGGING
         LOG_DEBUG(p_ctx, "find cluster");
#endif
         status = FUNC3(p_ctx, state, MKV_ELEMENT_ID_CLUSTER);
         if(status == VC_CONTAINER_ERROR_NOT_FOUND)
            status = FUNC5(p_ctx, state);
      }

   } while(status == VC_CONTAINER_SUCCESS && FUNC2(p_ctx) == VC_CONTAINER_SUCCESS);

   return status == VC_CONTAINER_SUCCESS ? FUNC2(p_ctx) : status;
}