#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_19__ {TYPE_5__* format; TYPE_2__* priv; } ;
typedef  TYPE_6__ VC_CONTAINER_TRACK_T ;
struct TYPE_20__ {int chunk_index; int max_chunk_size; } ;
typedef  TYPE_7__ VC_CONTAINER_TRACK_MODULE_T ;
struct TYPE_21__ {int tracks_num; TYPE_6__** tracks; TYPE_1__* priv; } ;
typedef  TYPE_8__ VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
struct TYPE_22__ {scalar_t__ index_status; scalar_t__ index_offset; } ;
typedef  TYPE_9__ VC_CONTAINER_MODULE_T ;
struct TYPE_18__ {scalar_t__ es_type; TYPE_4__* type; } ;
struct TYPE_16__ {int width; int height; int frame_rate_num; int frame_rate_den; } ;
struct TYPE_17__ {TYPE_3__ video; } ;
struct TYPE_15__ {TYPE_7__* module; } ;
struct TYPE_14__ {TYPE_9__* module; } ;

/* Variables and functions */
 int AVIF_HASINDEX ; 
 int AVIF_TRUSTCKTYPE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_8__*) ; 
 int FUNC1 (int) ; 
 scalar_t__ VC_CONTAINER_ES_TYPE_VIDEO ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*,int,char*) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC5(VC_CONTAINER_T *p_ctx)
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   uint32_t bitrate = 0, width = 0, height = 0, frame_interval = 0;
   uint32_t flags, num_chunks = 0, max_video_chunk_size = 0;
   uint32_t num_streams = p_ctx->tracks_num;
   unsigned int i;

   for (i = 0; i < p_ctx->tracks_num; i++)
   {
      VC_CONTAINER_TRACK_T *track = p_ctx->tracks[i];
      VC_CONTAINER_TRACK_MODULE_T *track_module = p_ctx->tracks[i]->priv->module;
      if (track->format->es_type == VC_CONTAINER_ES_TYPE_VIDEO)
      {
         width = track->format->type->video.width;
         height = track->format->type->video.height;
         if (track->format->type->video.frame_rate_num)
            frame_interval = track->format->type->video.frame_rate_den * FUNC1(1000000) /
                              track->format->type->video.frame_rate_num;
         num_chunks = track_module->chunk_index;
         max_video_chunk_size = track_module->max_chunk_size;
         break;
      }
   }

   flags = (module->index_offset && module->index_status == VC_CONTAINER_SUCCESS) ?
      (AVIF_HASINDEX | AVIF_TRUSTCKTYPE) : 0;

   FUNC3(p_ctx, FUNC2('a','v','i','h'), "Chunk ID");
   FUNC4(p_ctx, 56, "Chunk Size");
   FUNC4(p_ctx, frame_interval, "dwMicroSecPerFrame");
   FUNC4(p_ctx, bitrate >> 3, "dwMaxBytesPerSec");
   FUNC4(p_ctx, 0, "dwPaddingGranularity");
   FUNC4(p_ctx, flags, "dwFlags");
   FUNC4(p_ctx, num_chunks, "dwTotalFrames");
   FUNC4(p_ctx, 0, "dwInitialFrames");
   FUNC4(p_ctx, num_streams, "dwStreams");
   FUNC4(p_ctx, max_video_chunk_size, "dwSuggestedBufferSize");
   FUNC4(p_ctx, width, "dwWidth");
   FUNC4(p_ctx, height, "dwHeight");
   FUNC4(p_ctx, 0, "dwReserved0");
   FUNC4(p_ctx, 0, "dwReserved1");
   FUNC4(p_ctx, 0, "dwReserved2");
   FUNC4(p_ctx, 0, "dwReserved3");

   return FUNC0(p_ctx);
}