
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_3__ {unsigned int data_size; unsigned int data_offset; scalar_t__ status; } ;
typedef TYPE_1__ FLV_READER_STATE_T ;


 unsigned int READ_BYTES (int *,int *,unsigned int) ;
 unsigned int SKIP_BYTES (int *,unsigned int) ;
 scalar_t__ STREAM_STATUS (int *) ;
 scalar_t__ VC_CONTAINER_SUCCESS ;

__attribute__((used)) static VC_CONTAINER_STATUS_T flv_read_sample_data( VC_CONTAINER_T *p_ctx,
   FLV_READER_STATE_T *state, uint8_t *data, unsigned int *data_size )
{
   unsigned int size = state->data_size - state->data_offset;

   if(state->status != VC_CONTAINER_SUCCESS) return state->status;

   if(data_size && *data_size < size) size = *data_size;

   if(!data) size = SKIP_BYTES(p_ctx, size);
   else size = READ_BYTES(p_ctx, data, size);
   state->data_offset += size;

   if(data_size) *data_size = size;
   state->status = STREAM_STATUS(p_ctx);

   return state->status;
}
