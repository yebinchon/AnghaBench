
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_14__ {int is_enabled; } ;
typedef TYPE_2__ VC_CONTAINER_TRACK_T ;
struct TYPE_15__ {void* duration; TYPE_2__** tracks; TYPE_1__* priv; } ;
typedef TYPE_3__ VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_16__ {scalar_t__ size; scalar_t__ pts; int data; int buffer_size; int dts; int flags; int track; } ;
typedef TYPE_4__ VC_CONTAINER_PACKET_T ;
struct TYPE_17__ {scalar_t__ frame_data_left; int bitrate; int frame_bitrate; scalar_t__ frame_size; scalar_t__ frame_time_pos; scalar_t__ frame_index; scalar_t__ frame_offset; void* data_size; void* num_frames; } ;
typedef TYPE_5__ VC_CONTAINER_MODULE_T ;
struct TYPE_13__ {TYPE_5__* module; } ;


 void* MAX (void*,scalar_t__) ;
 scalar_t__ MIN (int ,scalar_t__) ;
 scalar_t__ READ_BYTES (TYPE_3__*,int ,scalar_t__) ;
 int SKIP_BYTES (TYPE_3__*,scalar_t__) ;
 scalar_t__ STREAM_STATUS (TYPE_3__*) ;
 scalar_t__ VC_CONTAINER_ERROR_CONTINUE ;
 int VC_CONTAINER_PACKET_FLAG_FRAME ;
 int VC_CONTAINER_PACKET_FLAG_FRAME_END ;
 int VC_CONTAINER_READ_FLAG_INFO ;
 int VC_CONTAINER_READ_FLAG_SKIP ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 int VC_CONTAINER_TIME_UNKNOWN ;
 scalar_t__ mpga_calculate_frame_time (TYPE_3__*) ;
 scalar_t__ mpga_sync (TYPE_3__*) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mpga_reader_read( VC_CONTAINER_T *p_ctx,
   VC_CONTAINER_PACKET_T *p_packet, uint32_t flags )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_TRACK_T *track = p_ctx->tracks[0];
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;

   if (module->frame_data_left == 0)
   {
      status = mpga_sync(p_ctx);
      if (status != VC_CONTAINER_SUCCESS) goto error;
   }

   if (module->bitrate)
   {

      module->bitrate = (module->bitrate * 31 + module->frame_bitrate) >> 5;
   }
   else
   {
      module->bitrate = module->frame_bitrate;
   }


   if (!track->is_enabled ||
       ((flags & VC_CONTAINER_READ_FLAG_SKIP) && !(flags & VC_CONTAINER_READ_FLAG_INFO)))
   {

      SKIP_BYTES(p_ctx, module->frame_size);
      module->frame_data_left = 0;
      if(!track->is_enabled)
         status = VC_CONTAINER_ERROR_CONTINUE;
      goto end;
   }


   p_packet->flags = p_packet->track = 0;
   if (module->frame_data_left == module->frame_size)
      p_packet->flags |= VC_CONTAINER_PACKET_FLAG_FRAME;
   else
      p_packet->flags |= VC_CONTAINER_PACKET_FLAG_FRAME_END;

   p_packet->size = module->frame_data_left;

   p_packet->pts = module->frame_time_pos;
   p_packet->dts = VC_CONTAINER_TIME_UNKNOWN;

   if ((flags & VC_CONTAINER_READ_FLAG_SKIP))
   {
      SKIP_BYTES(p_ctx, module->frame_size);
      module->frame_data_left = 0;
      goto end;
   }

   if (flags & VC_CONTAINER_READ_FLAG_INFO)
      return VC_CONTAINER_SUCCESS;

   p_packet->size = MIN(p_packet->buffer_size, module->frame_data_left);
   p_packet->size = READ_BYTES(p_ctx, p_packet->data, p_packet->size);
   module->frame_data_left -= p_packet->size;

 end:
   if (module->frame_data_left == 0)
   {
      module->frame_index++;
      module->frame_offset += module->frame_size;
      module->frame_time_pos = mpga_calculate_frame_time(p_ctx);






   }

   return status == VC_CONTAINER_SUCCESS ? STREAM_STATUS(p_ctx) : status;

error:
   return status;
}
