#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_38__   TYPE_8__ ;
typedef  struct TYPE_37__   TYPE_6__ ;
typedef  struct TYPE_36__   TYPE_5__ ;
typedef  struct TYPE_35__   TYPE_4__ ;
typedef  struct TYPE_34__   TYPE_3__ ;
typedef  struct TYPE_33__   TYPE_2__ ;
typedef  struct TYPE_32__   TYPE_1__ ;
typedef  struct TYPE_31__   TYPE_18__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_36__ {scalar_t__ tracks_num; TYPE_3__* priv; TYPE_8__** tracks; int /*<<< orphan*/  capabilities; } ;
typedef  TYPE_5__ VC_CONTAINER_T ;
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_33__ {void* data_offset; } ;
struct TYPE_37__ {TYPE_2__ state; void* data_offset; scalar_t__ index_size; void* index_offset; scalar_t__ data_size; TYPE_8__** tracks; } ;
typedef  TYPE_6__ VC_CONTAINER_MODULE_T ;
struct TYPE_38__ {TYPE_4__* priv; } ;
struct TYPE_35__ {TYPE_18__* module; } ;
struct TYPE_34__ {TYPE_6__* module; int /*<<< orphan*/  (* pf_seek ) (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  pf_read; int /*<<< orphan*/  pf_close; } ;
struct TYPE_32__ {TYPE_2__* state; } ;
struct TYPE_31__ {TYPE_1__ chunk; scalar_t__ index_offset; } ;

/* Variables and functions */
 scalar_t__ AVIF_MUSTUSEINDEX ; 
 scalar_t__ AVIF_TRUSTCKTYPE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,scalar_t__) ; 
 scalar_t__ AVI_TRACKS_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,char*,...) ; 
 int FUNC3 (TYPE_5__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,void*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,char*) ; 
 void* FUNC8 (TYPE_5__*) ; 
 scalar_t__ FUNC9 (TYPE_5__*) ; 
 scalar_t__ FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  VC_CONTAINER_CAPS_CAN_SEEK ; 
 int /*<<< orphan*/  VC_CONTAINER_CAPS_DATA_HAS_KEYFRAME_FLAG ; 
 int /*<<< orphan*/  VC_CONTAINER_CAPS_FORCE_TRACK ; 
 int /*<<< orphan*/  VC_CONTAINER_CAPS_HAS_INDEX ; 
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_INVALID ; 
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ; 
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  VC_CONTAINER_SEEK_FLAG_PRECISE ; 
 int /*<<< orphan*/  VC_CONTAINER_SEEK_MODE_TIME ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 scalar_t__ FUNC11 (char,char,char,char) ; 
 scalar_t__ FUNC12 (TYPE_5__*,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC13 (TYPE_5__*,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC14 (TYPE_5__*,TYPE_8__*,TYPE_18__*) ; 
 int /*<<< orphan*/  avi_reader_close ; 
 int /*<<< orphan*/  avi_reader_read ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*) ; 
 TYPE_6__* FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 TYPE_8__* FUNC19 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_5__*,TYPE_8__*) ; 

VC_CONTAINER_STATUS_T FUNC21( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_MODULE_T *module = 0;
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_ERROR_FORMAT_INVALID;
   uint32_t chunk_size;
   uint32_t peek_buf[3];
   unsigned int i;
   uint32_t flags, num_streams;
   int64_t offset;

   /* Check the RIFF chunk descriptor */
   if (FUNC3(p_ctx, (uint8_t*)peek_buf, 12) != 12)
     return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
   if( peek_buf[0] != FUNC11('R','I','F','F') )
     return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
   if( peek_buf[2] != FUNC11('A','V','I',' ') )
     return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;

   /*
    *  We now know we are dealing with an AVI file
    */
   FUNC6(p_ctx, "RIFF ID");
   FUNC7(p_ctx, "fileSize");
   FUNC6(p_ctx, "fileType");

   /* Look for the 'hdrl' LIST (sub)chunk */
   status = FUNC13(p_ctx, FUNC11('h','d','r','l'), &chunk_size);
   if (status != VC_CONTAINER_SUCCESS)
   {
      FUNC2(p_ctx, "'hdrl' LIST not found");
      return VC_CONTAINER_ERROR_FORMAT_INVALID;
   }

   FUNC6(p_ctx, "hdrl");

   /* Now look for the 'avih' sub-chunk */
   status = FUNC12(p_ctx, FUNC11('a','v','i','h'), &chunk_size);
   if (status != VC_CONTAINER_SUCCESS)
   {
      FUNC2(p_ctx, "'avih' not found");
      return VC_CONTAINER_ERROR_FORMAT_INVALID;
   }

   /* Parse the 'avih' sub-chunk */
   FUNC7(p_ctx, "dwMicroSecPerFrame");
   FUNC7(p_ctx, "dwMaxBytesPerSec");
   FUNC7(p_ctx, "dwPaddingGranularity");
   flags = FUNC4(p_ctx, "dwFlags");
   FUNC7(p_ctx, "dwTotalFrames");
   FUNC7(p_ctx, "dwInitialFrames");
   num_streams = FUNC4(p_ctx, "dwStreams");
   FUNC7(p_ctx, "dwSuggestedBufferSize");
   FUNC7(p_ctx, "dwWidth");
   FUNC7(p_ctx, "dwHeight");
   FUNC7(p_ctx, "dwReserved0");
   FUNC7(p_ctx, "dwReserved1");
   FUNC7(p_ctx, "dwReserved2");
   FUNC7(p_ctx, "dwReserved3");

   if((status = FUNC10(p_ctx)) != VC_CONTAINER_SUCCESS)
      goto error;

   /* Allocate our context and tracks */
   if ((module = FUNC17(sizeof(*module))) == NULL)
      return VC_CONTAINER_ERROR_OUT_OF_MEMORY;
   FUNC18(module, 0, sizeof(*module));
   p_ctx->priv->module = module;
   p_ctx->tracks = module->tracks;

   if (num_streams > AVI_TRACKS_MAX)
   {
      FUNC2(p_ctx, "cannot handle %u tracks, restricted to %d", num_streams, AVI_TRACKS_MAX);
      num_streams = AVI_TRACKS_MAX;
   }

   for (p_ctx->tracks_num = 0; p_ctx->tracks_num != num_streams; p_ctx->tracks_num++)
   {
      p_ctx->tracks[p_ctx->tracks_num] = FUNC19(p_ctx, sizeof(*p_ctx->tracks[0]->priv->module));
      if(!p_ctx->tracks[p_ctx->tracks_num]) break;
   }
   if(p_ctx->tracks_num != num_streams)
   { status = VC_CONTAINER_ERROR_OUT_OF_MEMORY; goto error; }

   /* Try to read stream header list chunks ('strl') */
   for (i = 0; i != num_streams; ++i)
   {
      status = FUNC14(p_ctx, p_ctx->tracks[i], p_ctx->tracks[i]->priv->module);
      if(status != VC_CONTAINER_SUCCESS) goto error;
   }

   /* Look for the 'movi' LIST (sub)chunk */
   status = FUNC13(p_ctx, FUNC11('m','o','v','i'), &chunk_size);
   if (status != VC_CONTAINER_SUCCESS)
   {
      FUNC2(p_ctx, "'movi' LIST not found");
      status = VC_CONTAINER_ERROR_FORMAT_INVALID;
      goto error;
   }

   /* Store offset to the start and size of data (the 'movi' LIST) */
   module->data_offset = FUNC8(p_ctx);
   module->data_size = chunk_size;

   p_ctx->priv->pf_close = avi_reader_close;
   p_ctx->priv->pf_read = avi_reader_read;
   p_ctx->priv->pf_seek = avi_reader_seek;

   if (flags & AVIF_MUSTUSEINDEX)
   {
      FUNC2(p_ctx, "AVIF_MUSTUSEINDEX not supported, playback might not work properly");
   }

   /* If the stream is seekable, see if we can find an index (for at
      least one of the tracks); even if we cannot find an index now,
      one might become available later (e.g. when the stream grows
      run-time), in that case we might want to report that we can seek
      and re-search for the index again if or when we're requested to
      seek. */
   if(FUNC9(p_ctx))
   {
      p_ctx->capabilities |= VC_CONTAINER_CAPS_CAN_SEEK;
      p_ctx->capabilities |= VC_CONTAINER_CAPS_FORCE_TRACK;

      for(i = 0; i < p_ctx->tracks_num; i++)
         if(p_ctx->tracks[i]->priv->module->index_offset) break;

      if (i < p_ctx->tracks_num)
      {
         p_ctx->capabilities |= VC_CONTAINER_CAPS_HAS_INDEX;
         if (flags & AVIF_TRUSTCKTYPE)
            p_ctx->capabilities |= VC_CONTAINER_CAPS_DATA_HAS_KEYFRAME_FLAG;
      }
      else
      {
         /* Skip data first */
         FUNC0(p_ctx, module->data_size);
         /* Now search for the index */
         status = FUNC12(p_ctx, FUNC11('i','d','x','1'), &chunk_size);
         if (status == VC_CONTAINER_SUCCESS)
         {
            FUNC2(p_ctx, "'idx1' found");
            /* Store offset to index data */
            module->index_offset = FUNC8(p_ctx);
            module->index_size = chunk_size;
            p_ctx->capabilities |= VC_CONTAINER_CAPS_HAS_INDEX;
            p_ctx->capabilities |= VC_CONTAINER_CAPS_DATA_HAS_KEYFRAME_FLAG;
         }

         /* Seek back to the start of the data */
         FUNC5(p_ctx, module->data_offset);
      }
   }

   FUNC6(p_ctx, "movi");

   for (i = 0; i != num_streams; i++)
   {
      p_ctx->tracks[i]->priv->module->chunk.state = &p_ctx->priv->module->state;
   }
   p_ctx->priv->module->state.data_offset = FUNC8(p_ctx);

   /* Update the tracks to set their data offsets. This help with bad
      interleaving, for example when there is all the video tracks followed
      by all the audio tracks. It means we don't have to read through the
      tracks we are not interested in when forcing a read from a given track,
      as could be the case in the above example. If this fails we will fall
      back to skipping track data. */
   offset = FUNC1(0);
   FUNC15(p_ctx, &offset, VC_CONTAINER_SEEK_MODE_TIME, VC_CONTAINER_SEEK_FLAG_PRECISE);

   if((status = FUNC10(p_ctx)) != VC_CONTAINER_SUCCESS) goto error;
   return VC_CONTAINER_SUCCESS;

error:
   FUNC2(p_ctx, "error opening stream (%i)", status);
   for(i = 0; i < p_ctx->tracks_num; i++)
      FUNC20(p_ctx, p_ctx->tracks[i]);
   p_ctx->tracks = NULL;
   p_ctx->tracks_num = 0;
   if (module) FUNC16(module);
   p_ctx->priv->module = NULL;
   return status;
}