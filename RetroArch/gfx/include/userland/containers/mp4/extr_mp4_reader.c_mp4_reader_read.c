
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
typedef int int64_t ;
struct TYPE_18__ {scalar_t__ status; int offset; unsigned int sample_offset; unsigned int sample_size; scalar_t__ keyframe; int pts; int dts; } ;
struct TYPE_15__ {TYPE_6__ state; } ;
typedef TYPE_3__ VC_CONTAINER_TRACK_MODULE_T ;
struct TYPE_16__ {size_t tracks_num; TYPE_2__** tracks; } ;
typedef TYPE_4__ VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_17__ {size_t track; unsigned int frame_size; unsigned int size; unsigned int buffer_size; int flags; int * data; int pts; int dts; } ;
typedef TYPE_5__ VC_CONTAINER_PACKET_T ;
struct TYPE_14__ {TYPE_1__* priv; } ;
struct TYPE_13__ {TYPE_3__* module; } ;
typedef TYPE_6__ MP4_READER_STATE_T ;


 scalar_t__ VC_CONTAINER_ERROR_INVALID_ARGUMENT ;
 int VC_CONTAINER_PACKET_FLAG_FRAME_END ;
 int VC_CONTAINER_PACKET_FLAG_FRAME_START ;
 int VC_CONTAINER_PACKET_FLAG_KEYFRAME ;
 size_t VC_CONTAINER_READ_FLAG_FORCE_TRACK ;
 size_t VC_CONTAINER_READ_FLAG_INFO ;
 size_t VC_CONTAINER_READ_FLAG_SKIP ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 scalar_t__ mp4_read_sample_data (TYPE_4__*,size_t,TYPE_6__*,int *,unsigned int*) ;
 scalar_t__ mp4_read_sample_header (TYPE_4__*,size_t,TYPE_6__*) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mp4_reader_read( VC_CONTAINER_T *p_ctx,
                                              VC_CONTAINER_PACKET_T *packet, uint32_t flags )
{
   VC_CONTAINER_TRACK_MODULE_T *track_module;
   VC_CONTAINER_STATUS_T status;
   MP4_READER_STATE_T *state;
   uint32_t i, track;
   unsigned int data_size;
   uint8_t *data = 0;
   int64_t offset;



   if(!(flags & VC_CONTAINER_READ_FLAG_FORCE_TRACK))
   {
      for(i = 0, track = 0, offset = -1; i < p_ctx->tracks_num; i++)
      {
         track_module = p_ctx->tracks[i]->priv->module;


         if(track_module->state.status != VC_CONTAINER_SUCCESS) continue;

         if(offset >= 0 && track_module->state.offset >= offset) continue;
         offset = track_module->state.offset;
         track = i;
      }
   }
   else track = packet->track;

   if(track >= p_ctx->tracks_num) return VC_CONTAINER_ERROR_INVALID_ARGUMENT;

   track_module = p_ctx->tracks[track]->priv->module;
   state = &track_module->state;

   status = mp4_read_sample_header(p_ctx, track, state);
   if(status != VC_CONTAINER_SUCCESS) return status;

   if(!packet)
      return mp4_read_sample_data(p_ctx, track, state, 0, 0);

   packet->dts = state->dts;
   packet->pts = state->pts;
   packet->flags = VC_CONTAINER_PACKET_FLAG_FRAME_END;
   if(state->keyframe) packet->flags |= VC_CONTAINER_PACKET_FLAG_KEYFRAME;
   if(!state->sample_offset) packet->flags |= VC_CONTAINER_PACKET_FLAG_FRAME_START;
   packet->track = track;
   packet->frame_size = state->sample_size;
   packet->size = state->sample_size - state->sample_offset;

   if(flags & VC_CONTAINER_READ_FLAG_SKIP)
      return mp4_read_sample_data(p_ctx, track, state, 0, 0);
   else if((flags & VC_CONTAINER_READ_FLAG_INFO) || !packet->data)
      return VC_CONTAINER_SUCCESS;

   data = packet->data;
   data_size = packet->buffer_size;

   status = mp4_read_sample_data(p_ctx, track, state, data, &data_size);
   if(status != VC_CONTAINER_SUCCESS)
   {

      return status;
   }

   packet->size = data_size;
   if(state->sample_offset)
      packet->flags &= ~VC_CONTAINER_PACKET_FLAG_FRAME_END;

   return status;
}
