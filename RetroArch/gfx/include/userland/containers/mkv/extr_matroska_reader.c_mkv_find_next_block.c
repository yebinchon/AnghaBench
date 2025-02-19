
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_8__ {size_t level; TYPE_1__* levels; scalar_t__ frame_duration; scalar_t__ seen_ref_block; } ;
struct TYPE_7__ {scalar_t__ id; } ;
typedef TYPE_2__ MKV_READER_STATE_T ;


 int LOG_DEBUG (int *,char*) ;
 int LOG_ERROR (int *,char*) ;
 scalar_t__ MKV_ELEMENT_ID_BLOCK ;
 scalar_t__ MKV_ELEMENT_ID_BLOCKGROUP ;
 scalar_t__ MKV_ELEMENT_ID_CLUSTER ;
 scalar_t__ MKV_ELEMENT_ID_SEGMENT ;
 scalar_t__ MKV_ELEMENT_ID_SIMPLE_BLOCK ;
 scalar_t__ STREAM_STATUS (int *) ;
 scalar_t__ VC_CONTAINER_ERROR_EOS ;
 scalar_t__ VC_CONTAINER_ERROR_NOT_FOUND ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 scalar_t__ mkv_find_next_element (int *,TYPE_2__*,scalar_t__) ;
 scalar_t__ mkv_find_next_segment (int *,TYPE_2__*) ;
 scalar_t__ mkv_skip_element (int *,TYPE_2__*) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mkv_find_next_block(VC_CONTAINER_T *p_ctx, MKV_READER_STATE_T *state)
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_ERROR_NOT_FOUND;

   do
   {
      if(state->level < 0)
      {



         status = mkv_find_next_segment(p_ctx, state);
         if(status == VC_CONTAINER_SUCCESS)
         {
            LOG_ERROR(p_ctx, "multi-segment files not supported");
            status = VC_CONTAINER_ERROR_EOS;
            break;
         }
      }
      if(state->levels[state->level].id == MKV_ELEMENT_ID_BLOCK ||
         state->levels[state->level].id == MKV_ELEMENT_ID_SIMPLE_BLOCK)
      {
         status = mkv_skip_element(p_ctx, state);
      }
      if(state->levels[state->level].id == MKV_ELEMENT_ID_BLOCKGROUP)
      {



         state->seen_ref_block = 0;
         state->frame_duration = 0;
         status = mkv_find_next_element(p_ctx, state, MKV_ELEMENT_ID_BLOCK);
         if(status == VC_CONTAINER_SUCCESS) break;

         if(status == VC_CONTAINER_ERROR_NOT_FOUND)
            status = mkv_skip_element(p_ctx, state);
      }
      if(state->levels[state->level].id == MKV_ELEMENT_ID_CLUSTER)
      {



         state->frame_duration = 0;
         status = mkv_find_next_element(p_ctx, state, MKV_ELEMENT_ID_BLOCKGROUP);
         if(status == VC_CONTAINER_SUCCESS &&
            state->levels[state->level].id == MKV_ELEMENT_ID_SIMPLE_BLOCK) break;
         if(status == VC_CONTAINER_ERROR_NOT_FOUND)
            status = mkv_skip_element(p_ctx, state);
      }
      if(state->levels[state->level].id == MKV_ELEMENT_ID_SEGMENT)
      {



         status = mkv_find_next_element(p_ctx, state, MKV_ELEMENT_ID_CLUSTER);
         if(status == VC_CONTAINER_ERROR_NOT_FOUND)
            status = mkv_skip_element(p_ctx, state);
      }

   } while(status == VC_CONTAINER_SUCCESS && STREAM_STATUS(p_ctx) == VC_CONTAINER_SUCCESS);

   return status == VC_CONTAINER_SUCCESS ? STREAM_STATUS(p_ctx) : status;
}
