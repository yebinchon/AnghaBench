
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_9__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;


typedef char uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
typedef int int64_t ;
typedef int guid ;
struct TYPE_32__ {int tracks_num; int duration; TYPE_4__* priv; int capabilities; TYPE_9__** tracks; } ;
typedef TYPE_5__ VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_33__ {int* extradata; int data_offset; int data_size; scalar_t__ block_size; TYPE_9__* track; } ;
typedef TYPE_6__ VC_CONTAINER_MODULE_T ;
typedef scalar_t__ VC_CONTAINER_FOURCC_T ;
struct TYPE_34__ {int is_enabled; TYPE_3__* format; } ;
struct TYPE_31__ {int pf_seek; int pf_read; int (* pf_close ) (TYPE_5__*) ;TYPE_6__* module; } ;
struct TYPE_30__ {int extradata_size; int* extradata; scalar_t__ bitrate; TYPE_2__* type; scalar_t__ codec; int es_type; } ;
struct TYPE_28__ {scalar_t__ bits_per_sample; scalar_t__ block_align; scalar_t__ sample_rate; scalar_t__ channels; } ;
struct TYPE_29__ {TYPE_1__ audio; } ;
typedef int GUID_T ;


 scalar_t__ BLOCK_SIZE ;
 int LOG_DEBUG (TYPE_5__*,char*,scalar_t__) ;
 int PEEK_BYTES (TYPE_5__*,char*,int) ;
 int READ_BYTES (TYPE_5__*,int*,int) ;
 scalar_t__ READ_FOURCC (TYPE_5__*,char*) ;
 int READ_GUID (TYPE_5__*,int *,char*) ;
 void* READ_U16 (TYPE_5__*,char*) ;
 int READ_U32 (TYPE_5__*,char*) ;
 scalar_t__ SEEK (TYPE_5__*,int) ;
 int SKIP_BYTES (TYPE_5__*,int) ;
 int SKIP_FOURCC (TYPE_5__*,char*) ;
 int SKIP_U16 (TYPE_5__*,char*) ;
 int SKIP_U32 (TYPE_5__*,char*) ;
 int STREAM_POSITION (TYPE_5__*) ;
 scalar_t__ STREAM_SEEKABLE (TYPE_5__*) ;
 scalar_t__ STREAM_STATUS (TYPE_5__*) ;
 int VC_CONTAINER_CAPS_CAN_SEEK ;
 scalar_t__ VC_CONTAINER_CODEC_ATRAC3 ;
 scalar_t__ VC_CONTAINER_CODEC_ATRACX ;
 scalar_t__ VC_CONTAINER_CODEC_PCM_SIGNED_LE ;
 scalar_t__ VC_CONTAINER_CODEC_UNKNOWN ;
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_FEATURE_NOT_SUPPORTED ;
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_INVALID ;
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ;
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 int VC_CONTAINER_ES_TYPE_AUDIO ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 scalar_t__ VC_FOURCC (char,char,char,char) ;
 scalar_t__ WAVE_FORMAT_EXTENSIBLE ;
 int atracx_guid ;
 TYPE_6__* malloc (int) ;
 int memcmp (int *,int *,int) ;
 int memset (TYPE_6__*,int ,int) ;
 int pcm_guid ;
 TYPE_9__* vc_container_allocate_track (TYPE_5__*,int ) ;
 int wav_reader_close (TYPE_5__*) ;
 int wav_reader_read ;
 int wav_reader_seek ;
 scalar_t__ waveformat_to_codec (scalar_t__) ;

VC_CONTAINER_STATUS_T wav_reader_open( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_MODULE_T *module = 0;
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   VC_CONTAINER_FOURCC_T codec;
   int64_t chunk_size, chunk_pos;
   uint32_t format, channels, samplerate, bitrate, block_align, bps, cbsize = 0;
   uint8_t buffer[12];


   if( PEEK_BYTES(p_ctx, buffer, 12) != 12 )
     return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
   if( VC_FOURCC(buffer[0], buffer[1], buffer[2], buffer[3]) !=
       VC_FOURCC('R','I','F','F') )
     return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
   if( VC_FOURCC(buffer[8], buffer[9], buffer[10], buffer[11]) !=
       VC_FOURCC('W','A','V','E') )
     return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;




   SKIP_FOURCC(p_ctx, "Chunk ID");
   SKIP_U32(p_ctx, "Chunk size");
   SKIP_FOURCC(p_ctx, "WAVE ID");


   do {
      chunk_pos = STREAM_POSITION(p_ctx) + 8;
      if( READ_FOURCC(p_ctx, "Chunk ID") == VC_FOURCC('f','m','t',' ') ) break;


      chunk_size = READ_U32(p_ctx, "Chunk size");
      SKIP_BYTES(p_ctx, chunk_size);
   } while(STREAM_STATUS(p_ctx) == VC_CONTAINER_SUCCESS);

   if(STREAM_STATUS(p_ctx) != VC_CONTAINER_SUCCESS)
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;


   chunk_size = READ_U32(p_ctx, "Chunk size");
   format = READ_U16(p_ctx, "wFormatTag");
   channels = READ_U16(p_ctx, "nChannels");
   samplerate = READ_U32(p_ctx, "nSamplesPerSec");
   bitrate = READ_U32(p_ctx, "nAvgBytesPerSec") * 8;
   block_align = READ_U16(p_ctx, "nBlockAlign");
   bps = READ_U16(p_ctx, "wBitsPerSample");

   if(STREAM_POSITION(p_ctx) - chunk_pos <= chunk_size - 2)
      cbsize = READ_U16(p_ctx, "cbSize");

   if(format == WAVE_FORMAT_EXTENSIBLE &&
      chunk_size >= 18 + 22 && cbsize >= 22)
   {
      GUID_T guid;
      codec = VC_CONTAINER_CODEC_UNKNOWN;

      SKIP_U16(p_ctx, "wValidBitsPerSample");
      SKIP_U32(p_ctx, "dwChannelMask");
      READ_GUID(p_ctx, &guid, "SubFormat");

      if(!memcmp(&guid, &pcm_guid, sizeof(guid)))
         codec = VC_CONTAINER_CODEC_PCM_SIGNED_LE;
      else if(!memcmp(&guid, &atracx_guid, sizeof(guid)))
         codec = VC_CONTAINER_CODEC_ATRAC3;

      cbsize -= 22;


   }
   else
   {
      codec = waveformat_to_codec(format);
   }


   if(codec == VC_CONTAINER_CODEC_UNKNOWN)
      return VC_CONTAINER_ERROR_FORMAT_FEATURE_NOT_SUPPORTED;


   if(!channels || !samplerate || !block_align || !bitrate)
      return VC_CONTAINER_ERROR_FORMAT_INVALID;
   if(codec == VC_CONTAINER_CODEC_ATRAC3 && channels > 2)
      return VC_CONTAINER_ERROR_FORMAT_INVALID;


   module = malloc(sizeof(*module));
   if(!module) { status = VC_CONTAINER_ERROR_OUT_OF_MEMORY; goto error; }
   memset(module, 0, sizeof(*module));
   p_ctx->priv->module = module;
   p_ctx->tracks_num = 1;
   p_ctx->tracks = &module->track;
   p_ctx->tracks[0] = vc_container_allocate_track(p_ctx, 0);
   if(!p_ctx->tracks[0]) return VC_CONTAINER_ERROR_OUT_OF_MEMORY;

   p_ctx->tracks[0]->format->es_type = VC_CONTAINER_ES_TYPE_AUDIO;
   p_ctx->tracks[0]->format->codec = codec;
   p_ctx->tracks[0]->format->type->audio.channels = channels;
   p_ctx->tracks[0]->format->type->audio.sample_rate = samplerate;
   p_ctx->tracks[0]->format->type->audio.block_align = block_align;
   p_ctx->tracks[0]->format->type->audio.bits_per_sample = bps;
   p_ctx->tracks[0]->format->bitrate = bitrate;
   p_ctx->tracks[0]->is_enabled = 1;
   p_ctx->tracks[0]->format->extradata_size = 0;
   p_ctx->tracks[0]->format->extradata = module->extradata;
   module->block_size = block_align;


   if(codec == VC_CONTAINER_CODEC_ATRAC3)
   {
      uint16_t h, mode;

      SKIP_U16(p_ctx, "len");
      SKIP_U16(p_ctx, "layer");
      SKIP_U32(p_ctx, "bytes_per_frame");
      mode = READ_U16(p_ctx, "mode");
      SKIP_U16(p_ctx, "mode_ext");
      SKIP_U16(p_ctx, "num_subframes");
      SKIP_U16(p_ctx, "flags");

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
      SKIP_BYTES(p_ctx, 2);
      p_ctx->tracks[0]->format->extradata_size =
         READ_BYTES(p_ctx, p_ctx->tracks[0]->format->extradata, 6);
   }
   else if(codec == VC_CONTAINER_CODEC_PCM_SIGNED_LE)
   {

      block_align *= 16;
      module->block_size = (BLOCK_SIZE / block_align) * block_align;
   }


   SKIP_BYTES(p_ctx, chunk_pos + chunk_size - STREAM_POSITION(p_ctx));


   do {
      chunk_pos = STREAM_POSITION(p_ctx) + 8;
      if( READ_FOURCC(p_ctx, "Chunk ID") == VC_FOURCC('d','a','t','a') ) break;


      chunk_size = READ_U32(p_ctx, "Chunk size");
      SKIP_BYTES(p_ctx, chunk_size);
   } while(STREAM_STATUS(p_ctx) == VC_CONTAINER_SUCCESS);

   if(STREAM_STATUS(p_ctx) != VC_CONTAINER_SUCCESS)
   {
      status = VC_CONTAINER_ERROR_FORMAT_INVALID; ;
      goto error;
   }

   module->data_offset = chunk_pos;
   module->data_size = READ_U32(p_ctx, "Chunk size");
   p_ctx->duration = module->data_size * 8000000 / bitrate;
   if(STREAM_SEEKABLE(p_ctx))
      p_ctx->capabilities |= VC_CONTAINER_CAPS_CAN_SEEK;





   p_ctx->priv->pf_close = wav_reader_close;
   p_ctx->priv->pf_read = wav_reader_read;
   p_ctx->priv->pf_seek = wav_reader_seek;


   status = SEEK(p_ctx, module->data_offset);
   if(status != VC_CONTAINER_SUCCESS) goto error;
   return VC_CONTAINER_SUCCESS;

 error:
   LOG_DEBUG(p_ctx, "wav: error opening stream (%i)", status);
   if(module) wav_reader_close(p_ctx);
   return status;
}
