
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
typedef void* int64_t ;
struct TYPE_8__ {int tracks_num; } ;
typedef TYPE_1__ VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_9__ {int data_offset; int data_size; int flags; int tag_prev_size; int track; int status; int timestamp; void* data_position; void* tag_position; } ;
typedef TYPE_2__ FLV_READER_STATE_T ;


 void* STREAM_POSITION (TYPE_1__*) ;
 int VC_CONTAINER_ERROR_CONTINUE ;
 int VC_CONTAINER_SUCCESS ;
 int flv_read_frame_header (TYPE_1__*,int*,int*,int*,int *,int*,int ) ;
 int flv_validate_frame_data (TYPE_1__*,int,int*,int *) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T flv_read_sample_header( VC_CONTAINER_T *p_ctx,
   FLV_READER_STATE_T *state)
{
   int track, prev_size, size, flags;
   uint32_t timestamp;
   int64_t position;


   if(state->data_offset < state->data_size)
      return state->status;


   position = STREAM_POSITION(p_ctx);
   state->status = flv_read_frame_header(p_ctx, &prev_size, &track,
                                         &size, &timestamp, &flags, 0);
   if(state->status != VC_CONTAINER_SUCCESS)
      return state->status;

   state->status = flv_validate_frame_data(p_ctx, track, &size, &timestamp);
   if(state->status == VC_CONTAINER_ERROR_CONTINUE)
   {

      state->status = VC_CONTAINER_SUCCESS;
      track = p_ctx->tracks_num;
   }
   if(state->status != VC_CONTAINER_SUCCESS)
      return state->status;

   state->tag_position = position;
   state->data_position = STREAM_POSITION(p_ctx);
   state->data_size = size;
   state->data_offset = 0;
   state->flags = flags;
   state->tag_prev_size = prev_size;
   state->timestamp = timestamp;
   state->track = track;
   return state->status;
}
