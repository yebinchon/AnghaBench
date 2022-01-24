#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_9__ ;
typedef  struct TYPE_35__   TYPE_8__ ;
typedef  struct TYPE_34__   TYPE_7__ ;
typedef  struct TYPE_33__   TYPE_6__ ;
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;
typedef  struct TYPE_27__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_33__ {TYPE_3__* format; TYPE_5__* priv; } ;
typedef  TYPE_6__ VC_CONTAINER_TRACK_T ;
struct TYPE_34__ {scalar_t__ chunk_offs; void* max_chunk_size; int /*<<< orphan*/  chunk_index; } ;
typedef  TYPE_7__ VC_CONTAINER_TRACK_MODULE_T ;
struct TYPE_35__ {TYPE_6__** tracks; TYPE_4__* priv; } ;
typedef  TYPE_8__ VC_CONTAINER_T ;
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_36__ {size_t track; int flags; scalar_t__ frame_size; scalar_t__ size; int data; } ;
typedef  TYPE_9__ VC_CONTAINER_PACKET_T ;
struct TYPE_27__ {int headers_written; scalar_t__ data_offset; scalar_t__ chunk_data_written; size_t current_track_num; scalar_t__ chunk_size; int avi_frame_buffer; TYPE_9__ frame_packet; } ;
typedef  TYPE_10__ VC_CONTAINER_MODULE_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_FOURCC_T ;
struct TYPE_32__ {TYPE_7__* module; } ;
struct TYPE_31__ {TYPE_10__* module; } ;
struct TYPE_30__ {scalar_t__ es_type; TYPE_2__* type; } ;
struct TYPE_28__ {scalar_t__ block_align; } ;
struct TYPE_29__ {TYPE_1__ audio; } ;

/* Variables and functions */
 scalar_t__ AVI_AUDIO_CHUNK_SIZE_LIMIT ; 
 scalar_t__ AVI_FRAME_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (void*,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_8__*) ; 
 scalar_t__ FUNC4 (TYPE_8__*) ; 
 scalar_t__ FUNC5 (TYPE_8__*) ; 
 scalar_t__ ULONG_MAX ; 
 int /*<<< orphan*/  VC_CONTAINER_CONTROL_IO_FLUSH ; 
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_RESOURCES ; 
 scalar_t__ VC_CONTAINER_ES_TYPE_AUDIO ; 
 int VC_CONTAINER_PACKET_FLAG_FRAME_END ; 
 int VC_CONTAINER_PACKET_FLAG_FRAME_START ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 int /*<<< orphan*/  FUNC6 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_8__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_8__*,scalar_t__,char*) ; 
 scalar_t__ FUNC10 (TYPE_8__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_8__*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC12 (TYPE_8__*,scalar_t__) ; 
 scalar_t__ FUNC13 (TYPE_8__*) ; 
 scalar_t__ FUNC14 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_8__*,size_t,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_8__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC19( VC_CONTAINER_T *p_ctx,
                                               VC_CONTAINER_PACKET_T *p_packet )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   VC_CONTAINER_TRACK_T *track = NULL;
   VC_CONTAINER_TRACK_MODULE_T *track_module = NULL;

   /* Check we have written headers before any data */
   if(!module->headers_written)
   {
      if ((status = FUNC14(p_ctx)) != VC_CONTAINER_SUCCESS) return status;
      module->headers_written = 1;
   }

   /* Check that we have started the 'movi' list */
   if (!module->data_offset)
   {
      module->data_offset = FUNC3(p_ctx);
      FUNC17(module->data_offset != FUNC1(0));

      FUNC8(p_ctx, FUNC6('L','I','S','T'), "Chunk ID");
      FUNC9(p_ctx, 0, "LIST Size");
      FUNC8(p_ctx, FUNC6('m','o','v','i'), "Chunk ID");
      if ((status = FUNC5(p_ctx)) != VC_CONTAINER_SUCCESS) return status;
   }

   /* If the container is passing in a frame from a new track but we
      arent't finished with a chunk from another track we need to finish
      that chunk first */
   if (module->chunk_data_written && p_packet->track != module->current_track_num)
   {
      track_module = p_ctx->tracks[module->current_track_num]->priv->module;
      status = FUNC12(p_ctx, module->chunk_data_written);
      FUNC15(p_ctx, module->current_track_num, module->chunk_data_written, 0);
      track_module->chunk_index++;
      track_module->chunk_offs += module->chunk_data_written;
      track_module->max_chunk_size = FUNC2(track_module->max_chunk_size, module->chunk_data_written);
      module->chunk_data_written = 0;
      if (status != VC_CONTAINER_SUCCESS) return status;
   }

   /* Check we are not about to go over the limit of total number of chunks */
   if (FUNC13(p_ctx) == (uint32_t)ULONG_MAX) return VC_CONTAINER_ERROR_OUT_OF_RESOURCES;

    if(FUNC4(p_ctx))
    {
       /* Check we are not about to go over the maximum file size */
       if (FUNC10(p_ctx, p_packet) >= (int64_t)ULONG_MAX) return VC_CONTAINER_ERROR_OUT_OF_RESOURCES;
    }

   /* FIXME: are we expected to handle this case or should it be picked up by the above layer? */
   FUNC17(!(module->chunk_data_written && (p_packet->flags & VC_CONTAINER_PACKET_FLAG_FRAME_START)));

   track = p_ctx->tracks[p_packet->track];
   track_module = p_ctx->tracks[p_packet->track]->priv->module;
   module->current_track_num = p_packet->track;

   if (module->chunk_data_written == 0)
   {
      /* This is the first fragment of the chunk */
      VC_CONTAINER_FOURCC_T chunk_id;
      uint32_t chunk_size;

      FUNC11(p_ctx, &chunk_id, p_packet->track);

      if (p_packet->frame_size)
      {
         /* We know what the final size of the chunk is going to be */
         chunk_size = module->chunk_size = p_packet->frame_size;
      }
      else
      {
         chunk_size = p_packet->size;
         module->chunk_size = 0;
      }

      FUNC8(p_ctx, chunk_id, "Chunk ID");
      if(FUNC4(p_ctx) || p_packet->flags & VC_CONTAINER_PACKET_FLAG_FRAME_END)
      {
         /* If the output stream can seek we can fix up the frame size later, and if the
          * packet holds the whole frame we won't need to, so write data straight out. */
         FUNC9(p_ctx, chunk_size, "Chunk Size");
         FUNC7(p_ctx, p_packet->data, p_packet->size);
      }
      else
      {
         FUNC17(module->avi_frame_buffer);
         if(p_packet->size > AVI_FRAME_BUFFER_SIZE)
            return VC_CONTAINER_ERROR_OUT_OF_RESOURCES;
         module->frame_packet = *p_packet;
         module->frame_packet.data = module->avi_frame_buffer;
         FUNC16(module->frame_packet.data,
                  p_packet->data, module->frame_packet.size);
      }

      module->chunk_data_written = p_packet->size;
   }
   else
   {
      if(module->frame_packet.size > 0 && module->avi_frame_buffer)
      {
         if(module->frame_packet.size > 0)
         {
            if(module->frame_packet.size + p_packet->size > AVI_FRAME_BUFFER_SIZE)
               return VC_CONTAINER_ERROR_OUT_OF_RESOURCES;
            FUNC16(module->frame_packet.data + module->frame_packet.size,
                     p_packet->data, p_packet->size);
            module->frame_packet.size += p_packet->size;
         }
      }
      else
      {
         FUNC7(p_ctx, p_packet->data, p_packet->size);
      }
      module->chunk_data_written += p_packet->size;
   }

   if ((status = FUNC5(p_ctx)) != VC_CONTAINER_SUCCESS)
      return status;

   if ((p_packet->flags & VC_CONTAINER_PACKET_FLAG_FRAME_END) ||
       (track->format->es_type == VC_CONTAINER_ES_TYPE_AUDIO &&
        track->format->type->audio.block_align &&
        module->chunk_data_written > AVI_AUDIO_CHUNK_SIZE_LIMIT))
   {
      if(module->frame_packet.size > 0)
      {
         FUNC9(p_ctx, module->frame_packet.size, "Chunk Size");
         FUNC7(p_ctx, module->frame_packet.data, module->frame_packet.size);
         p_packet->size = module->frame_packet.size;
         module->frame_packet.size = 0;
      }

      if (!module->chunk_size && module->chunk_data_written > p_packet->size)
      {
         /* The chunk size needs to be rewritten */
         status = FUNC12(p_ctx, module->chunk_data_written);
      }
      else
      {
         status = FUNC12(p_ctx, 0);
      }

      if(!FUNC4(p_ctx))
      {
         /* If we are streaming then flush to avoid delaying data transport. */
         FUNC18(p_ctx, VC_CONTAINER_CONTROL_IO_FLUSH);
      }

      if(FUNC4(p_ctx))
      {
          /* Keep track of data written so we can check we don't exceed file size and also for doing
           * index fix-ups, but only do this if we are writing to a seekable IO. */
          FUNC15(p_ctx, p_packet->track, module->chunk_data_written, FUNC0(p_packet->flags));
      }
      track_module->chunk_index++;
      track_module->chunk_offs += module->chunk_data_written;
      track_module->max_chunk_size = FUNC2(track_module->max_chunk_size, module->chunk_data_written);
      module->chunk_data_written = 0;

      if (status != VC_CONTAINER_SUCCESS) return status;
   }

   return FUNC5(p_ctx);
}