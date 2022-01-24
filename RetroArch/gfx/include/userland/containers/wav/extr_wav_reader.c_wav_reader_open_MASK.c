#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_9__ ;
typedef  struct TYPE_33__   TYPE_6__ ;
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int uint16_t ;
typedef  int int64_t ;
typedef  int /*<<< orphan*/  guid ;
struct TYPE_32__ {int tracks_num; int duration; TYPE_4__* priv; int /*<<< orphan*/  capabilities; TYPE_9__** tracks; } ;
typedef  TYPE_5__ VC_CONTAINER_T ;
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_33__ {int* extradata; int data_offset; int data_size; scalar_t__ block_size; TYPE_9__* track; } ;
typedef  TYPE_6__ VC_CONTAINER_MODULE_T ;
typedef  scalar_t__ VC_CONTAINER_FOURCC_T ;
struct TYPE_34__ {int is_enabled; TYPE_3__* format; } ;
struct TYPE_31__ {int /*<<< orphan*/  pf_seek; int /*<<< orphan*/  pf_read; int /*<<< orphan*/  (* pf_close ) (TYPE_5__*) ;TYPE_6__* module; } ;
struct TYPE_30__ {int extradata_size; int* extradata; scalar_t__ bitrate; TYPE_2__* type; scalar_t__ codec; int /*<<< orphan*/  es_type; } ;
struct TYPE_28__ {scalar_t__ bits_per_sample; scalar_t__ block_align; scalar_t__ sample_rate; scalar_t__ channels; } ;
struct TYPE_29__ {TYPE_1__ audio; } ;
typedef  int /*<<< orphan*/  GUID_T ;

/* Variables and functions */
 scalar_t__ BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,char*,scalar_t__) ; 
 int FUNC1 (TYPE_5__*,char*,int) ; 
 int FUNC2 (TYPE_5__*,int*,int) ; 
 scalar_t__ FUNC3 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ *,char*) ; 
 void* FUNC5 (TYPE_5__*,char*) ; 
 int FUNC6 (TYPE_5__*,char*) ; 
 scalar_t__ FUNC7 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,char*) ; 
 int FUNC12 (TYPE_5__*) ; 
 scalar_t__ FUNC13 (TYPE_5__*) ; 
 scalar_t__ FUNC14 (TYPE_5__*) ; 
 int /*<<< orphan*/  VC_CONTAINER_CAPS_CAN_SEEK ; 
 scalar_t__ VC_CONTAINER_CODEC_ATRAC3 ; 
 scalar_t__ VC_CONTAINER_CODEC_ATRACX ; 
 scalar_t__ VC_CONTAINER_CODEC_PCM_SIGNED_LE ; 
 scalar_t__ VC_CONTAINER_CODEC_UNKNOWN ; 
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_FEATURE_NOT_SUPPORTED ; 
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_INVALID ; 
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ; 
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  VC_CONTAINER_ES_TYPE_AUDIO ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 scalar_t__ FUNC15 (char,char,char,char) ; 
 scalar_t__ WAVE_FORMAT_EXTENSIBLE ; 
 int /*<<< orphan*/  atracx_guid ; 
 TYPE_6__* FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pcm_guid ; 
 TYPE_9__* FUNC19 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_5__*) ; 
 int /*<<< orphan*/  wav_reader_read ; 
 int /*<<< orphan*/  wav_reader_seek ; 
 scalar_t__ FUNC21 (scalar_t__) ; 

VC_CONTAINER_STATUS_T FUNC22( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_MODULE_T *module = 0;
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   VC_CONTAINER_FOURCC_T codec;
   int64_t chunk_size, chunk_pos;
   uint32_t format, channels, samplerate, bitrate, block_align, bps, cbsize = 0;
   uint8_t buffer[12];

   /* Check the RIFF chunk descriptor */
   if( FUNC1(p_ctx, buffer, 12) != 12 )
     return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
   if( FUNC15(buffer[0], buffer[1], buffer[2], buffer[3]) !=
       FUNC15('R','I','F','F') )
     return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
   if( FUNC15(buffer[8], buffer[9], buffer[10], buffer[11]) !=
       FUNC15('W','A','V','E') )
     return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;

   /*
    *  We are dealing with a WAV file
    */
   FUNC9(p_ctx, "Chunk ID");
   FUNC11(p_ctx, "Chunk size");
   FUNC9(p_ctx, "WAVE ID");

   /* We're looking for the 'fmt' sub-chunk */
   do {
      chunk_pos = FUNC12(p_ctx) + 8;
      if( FUNC3(p_ctx, "Chunk ID") == FUNC15('f','m','t',' ') ) break;

      /* Not interested in this chunk. Skip it. */
      chunk_size = FUNC6(p_ctx, "Chunk size");
      FUNC8(p_ctx, chunk_size);
   } while(FUNC14(p_ctx) == VC_CONTAINER_SUCCESS);

   if(FUNC14(p_ctx) != VC_CONTAINER_SUCCESS)
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED; /* 'fmt' not found */

   /* Parse the 'fmt' sub-chunk */
   chunk_size  = FUNC6(p_ctx, "Chunk size");
   format      = FUNC5(p_ctx, "wFormatTag");
   channels    = FUNC5(p_ctx, "nChannels");
   samplerate  = FUNC6(p_ctx, "nSamplesPerSec");
   bitrate     = FUNC6(p_ctx, "nAvgBytesPerSec") * 8;
   block_align = FUNC5(p_ctx, "nBlockAlign");
   bps         = FUNC5(p_ctx, "wBitsPerSample");

   if(FUNC12(p_ctx) - chunk_pos <= chunk_size - 2)
      cbsize = FUNC5(p_ctx, "cbSize");

   if(format == WAVE_FORMAT_EXTENSIBLE &&
      chunk_size >= 18 + 22 && cbsize >= 22)
   {
      GUID_T guid;
      codec = VC_CONTAINER_CODEC_UNKNOWN;

      FUNC10(p_ctx, "wValidBitsPerSample");
      FUNC11(p_ctx, "dwChannelMask");
      FUNC4(p_ctx, &guid, "SubFormat");

      if(!FUNC17(&guid, &pcm_guid, sizeof(guid)))
         codec = VC_CONTAINER_CODEC_PCM_SIGNED_LE;
      else if(!FUNC17(&guid, &atracx_guid, sizeof(guid)))
         codec = VC_CONTAINER_CODEC_ATRAC3;

      cbsize -= 22;

      /* TODO: deal with channel mapping */
   }
   else
   {
      codec = FUNC21(format);
   }

   /* Bail out if we don't recognise the codec */
   if(codec == VC_CONTAINER_CODEC_UNKNOWN)
      return VC_CONTAINER_ERROR_FORMAT_FEATURE_NOT_SUPPORTED;

   /* Do some sanity checking on the info we got */
   if(!channels || !samplerate || !block_align || !bitrate)
      return VC_CONTAINER_ERROR_FORMAT_INVALID;
   if(codec == VC_CONTAINER_CODEC_ATRAC3 && channels > 2)
      return VC_CONTAINER_ERROR_FORMAT_INVALID;

   /* Allocate our context */
   module = FUNC16(sizeof(*module));
   if(!module) { status = VC_CONTAINER_ERROR_OUT_OF_MEMORY; goto error; }
   FUNC18(module, 0, sizeof(*module));
   p_ctx->priv->module = module;
   p_ctx->tracks_num = 1;
   p_ctx->tracks = &module->track;
   p_ctx->tracks[0] = FUNC19(p_ctx, 0);
   if(!p_ctx->tracks[0]) return VC_CONTAINER_ERROR_OUT_OF_MEMORY;

   p_ctx->tracks[0]->format->es_type = VC_CONTAINER_ES_TYPE_AUDIO;
   p_ctx->tracks[0]->format->codec = codec;
   p_ctx->tracks[0]->format->type->audio.channels = channels;
   p_ctx->tracks[0]->format->type->audio.sample_rate = samplerate;
   p_ctx->tracks[0]->format->type->audio.block_align = block_align;
   p_ctx->tracks[0]->format->type->audio.bits_per_sample = bps;
   p_ctx->tracks[0]->format->bitrate = bitrate;
   p_ctx->tracks[0]->is_enabled = true;
   p_ctx->tracks[0]->format->extradata_size = 0;
   p_ctx->tracks[0]->format->extradata = module->extradata;
   module->block_size = block_align;

   /* Prepare the codec extradata */
   if(codec == VC_CONTAINER_CODEC_ATRAC3)
   {
      uint16_t h, mode;

      FUNC10(p_ctx, "len");
      FUNC10(p_ctx, "layer");
      FUNC11(p_ctx, "bytes_per_frame");
      mode = FUNC5(p_ctx, "mode");
      FUNC10(p_ctx, "mode_ext");
      FUNC10(p_ctx, "num_subframes");
      FUNC10(p_ctx, "flags");

      h = (1 << 15);
      if(channels == 2)
      {
         h |= (1 << 13);
         if(mode == 1) h |= (1 << 14);
      }
      h |= block_align & 0x7ff;

      p_ctx->tracks[0]->format->extradata[0] = h >> 8;
      p_ctx->tracks[0]->format->extradata[1] = h & 255;
      p_ctx->tracks[0]->format->extradata_size = 2;
   }
   else if(codec == VC_CONTAINER_CODEC_ATRACX && cbsize >= 6)
   {
      FUNC8(p_ctx, 2);
      p_ctx->tracks[0]->format->extradata_size =
         FUNC2(p_ctx, p_ctx->tracks[0]->format->extradata, 6);
   }
   else if(codec == VC_CONTAINER_CODEC_PCM_SIGNED_LE)
   {
      /* Audioplus can no longer be given anything other than a multiple-of-16 number of samples */
      block_align *= 16;
      module->block_size = (BLOCK_SIZE / block_align) * block_align;
   }

   /* Skip the rest of the 'fmt' sub-chunk */
   FUNC8(p_ctx, chunk_pos + chunk_size - FUNC12(p_ctx));

   /* We also need the 'data' sub-chunk */
   do {
      chunk_pos = FUNC12(p_ctx) + 8;
      if( FUNC3(p_ctx, "Chunk ID") == FUNC15('d','a','t','a') ) break;

      /* Not interested in this chunk. Skip it. */
      chunk_size = FUNC6(p_ctx, "Chunk size");
      FUNC8(p_ctx, chunk_size);
   } while(FUNC14(p_ctx) == VC_CONTAINER_SUCCESS);

   if(FUNC14(p_ctx) != VC_CONTAINER_SUCCESS)
   {
      status = VC_CONTAINER_ERROR_FORMAT_INVALID; /* 'data' not found */;
      goto error;
   }

   module->data_offset = chunk_pos;
   module->data_size = FUNC6(p_ctx, "Chunk size");
   p_ctx->duration = module->data_size * 8000000 / bitrate;
   if(FUNC13(p_ctx))
      p_ctx->capabilities |= VC_CONTAINER_CAPS_CAN_SEEK;

   /*
    *  We now have all the information we really need to start playing the stream
    */

   p_ctx->priv->pf_close = wav_reader_close;
   p_ctx->priv->pf_read = wav_reader_read;
   p_ctx->priv->pf_seek = wav_reader_seek;

   /* Seek back to the start of the data */
   status = FUNC7(p_ctx, module->data_offset);
   if(status != VC_CONTAINER_SUCCESS) goto error;
   return VC_CONTAINER_SUCCESS;

 error:
   FUNC0(p_ctx, "wav: error opening stream (%i)", status);
   if(module) FUNC20(p_ctx);
   return status;
}