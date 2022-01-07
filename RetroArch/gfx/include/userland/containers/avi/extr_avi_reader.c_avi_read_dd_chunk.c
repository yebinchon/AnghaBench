
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_3__ {int extra_chunk_data_len; scalar_t__ extra_chunk_track_num; scalar_t__ extra_chunk_data_offs; int extra_chunk_data; } ;
typedef TYPE_1__ AVI_TRACK_STREAM_STATE_T ;


 int AVI_SYNC_CHUNK (int *) ;
 scalar_t__ AVI_TWOCC (char,char) ;
 int LOG_DEBUG (int *,char*,...) ;
 int READ_BYTES (int *,int ,int) ;
 int VC_CONTAINER_ERROR_CONTINUE ;
 int VC_CONTAINER_ERROR_FORMAT_INVALID ;
 int VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ;
 int VC_CONTAINER_SUCCESS ;

__attribute__((used)) static VC_CONTAINER_STATUS_T avi_read_dd_chunk( VC_CONTAINER_T *p_ctx,
   AVI_TRACK_STREAM_STATE_T *p_state, uint16_t data_type, uint32_t chunk_size,
   uint16_t track_num )
{
   if (data_type == AVI_TWOCC('d','d'))
   {
      if (p_state->extra_chunk_data_len ||
          chunk_size > sizeof(p_state->extra_chunk_data))
      {
         LOG_DEBUG(p_ctx, "cannot handle multiple consecutive 'dd' chunks");
         return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
      }
      if(READ_BYTES(p_ctx, p_state->extra_chunk_data, chunk_size) != chunk_size)
         return VC_CONTAINER_ERROR_FORMAT_INVALID;

      AVI_SYNC_CHUNK(p_ctx);
      p_state->extra_chunk_track_num = track_num;
      p_state->extra_chunk_data_len = chunk_size;
      p_state->extra_chunk_data_offs = 0;

      return VC_CONTAINER_ERROR_CONTINUE;
   }
   else if (p_state->extra_chunk_data_len &&
      p_state->extra_chunk_track_num != track_num)
   {
      LOG_DEBUG(p_ctx, "dropping data from '%02ddd' chunk, not for this track (%d)",
         p_state->extra_chunk_track_num, track_num);
      p_state->extra_chunk_data_len = 0;
   }

   return VC_CONTAINER_SUCCESS;
}
