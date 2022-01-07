
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_4__ {unsigned int sample_size; unsigned int sample_offset; scalar_t__ status; unsigned int offset; } ;
typedef TYPE_1__ MP4_READER_STATE_T ;


 unsigned int READ_BYTES (int *,int *,unsigned int) ;
 scalar_t__ SEEK (int *,unsigned int) ;
 scalar_t__ STREAM_STATUS (int *) ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 int mp4_read_sample_header (int *,int ,TYPE_1__*) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mp4_read_sample_data( VC_CONTAINER_T *p_ctx, uint32_t track,
   MP4_READER_STATE_T *state, uint8_t *data, unsigned int *data_size )
{
   VC_CONTAINER_STATUS_T status;
   unsigned int size = state->sample_size - state->sample_offset;

   if(state->status != VC_CONTAINER_SUCCESS) return state->status;

   if(data_size && *data_size < size) size = *data_size;

   if(data)
   {
      state->status = SEEK(p_ctx, state->offset + state->sample_offset);
      if(state->status != VC_CONTAINER_SUCCESS) return state->status;

      size = READ_BYTES(p_ctx, data, size);
   }
   state->sample_offset += size;

   if(data_size) *data_size = size;
   state->status = STREAM_STATUS(p_ctx);
   if(state->status != VC_CONTAINER_SUCCESS) return state->status;

   status = state->status;


   if(state->sample_offset >= state->sample_size)
      mp4_read_sample_header(p_ctx, track, state);

   return status;
}
