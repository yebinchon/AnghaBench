
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
typedef int VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_5__ {size_t level; int seen_ref_block; TYPE_1__* levels; } ;
struct TYPE_4__ {scalar_t__ offset; scalar_t__ size; scalar_t__ id; } ;
typedef TYPE_2__ MKV_READER_STATE_T ;
typedef int MKV_ELEMENT_T ;
typedef scalar_t__ MKV_ELEMENT_ID_T ;


 int INT64_C (int) ;
 scalar_t__ MKV_ELEMENT_ID_BLOCK ;
 scalar_t__ MKV_ELEMENT_ID_BLOCKGROUP ;
 scalar_t__ MKV_ELEMENT_ID_REFERENCE_BLOCK ;
 scalar_t__ MKV_ELEMENT_ID_SIMPLE_BLOCK ;
 scalar_t__ MKV_MAX_ELEMENT_SIZE ;
 int SEEK (int *,scalar_t__) ;
 int SKIP_BYTES (int *,scalar_t__) ;
 scalar_t__ STREAM_POSITION (int *) ;
 scalar_t__ STREAM_STATUS (int *) ;
 scalar_t__ VC_CONTAINER_ERROR_NOT_FOUND ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 int * mkv_cluster_elements_list ;
 scalar_t__ mkv_read_element_data (int *,int *,scalar_t__,int) ;
 scalar_t__ mkv_read_element_header (int *,int,scalar_t__*,scalar_t__*,scalar_t__,int **) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mkv_find_next_element(VC_CONTAINER_T *p_ctx,
      MKV_READER_STATE_T *state, MKV_ELEMENT_ID_T element_id)
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   int64_t element_size, element_offset;
   MKV_ELEMENT_ID_T id;


   do
   {
      MKV_ELEMENT_T *element = mkv_cluster_elements_list;


      if(STREAM_POSITION(p_ctx) >= state->levels[state->level].offset +
         state->levels[state->level].size)
         return VC_CONTAINER_ERROR_NOT_FOUND;

      status = mkv_read_element_header(p_ctx, INT64_C(1) << 30, &id,
            &element_size, state->levels[state->level].id, &element);
      element_offset = STREAM_POSITION(p_ctx);
      if(status != VC_CONTAINER_SUCCESS) return status;
      if(id == element_id) break;
      if(element_id == MKV_ELEMENT_ID_BLOCKGROUP && id == MKV_ELEMENT_ID_SIMPLE_BLOCK) break;

      if(element_id == MKV_ELEMENT_ID_BLOCK && id == MKV_ELEMENT_ID_REFERENCE_BLOCK)
         state->seen_ref_block = 1;


      if(STREAM_POSITION(p_ctx) + element_size >= state->levels[state->level].offset +
         state->levels[state->level].size)
         return VC_CONTAINER_ERROR_NOT_FOUND;

      status = mkv_read_element_data(p_ctx, element, element_size, INT64_C(1) << 30);




   } while (status == VC_CONTAINER_SUCCESS && STREAM_STATUS(p_ctx) == VC_CONTAINER_SUCCESS);

   if(STREAM_STATUS(p_ctx) != VC_CONTAINER_SUCCESS)
      return STREAM_STATUS(p_ctx);

   state->level++;
   state->levels[state->level].offset = element_offset;
   state->levels[state->level].size = element_size;
   state->levels[state->level].id = id;
   return VC_CONTAINER_SUCCESS;
}
