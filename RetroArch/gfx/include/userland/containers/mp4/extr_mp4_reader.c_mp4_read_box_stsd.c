
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int int64_t ;
struct TYPE_22__ {TYPE_6__* format; TYPE_3__* priv; } ;
typedef TYPE_7__ VC_CONTAINER_TRACK_T ;
struct TYPE_23__ {TYPE_7__** tracks; TYPE_1__* priv; } ;
typedef TYPE_8__ VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_24__ {size_t current_track; } ;
typedef TYPE_9__ VC_CONTAINER_MODULE_T ;
struct TYPE_21__ {int codec; scalar_t__ es_type; int extradata_size; int* extradata; TYPE_5__* type; } ;
struct TYPE_19__ {int bits_per_sample; int channels; unsigned int sample_rate; } ;
struct TYPE_20__ {TYPE_4__ audio; } ;
struct TYPE_18__ {TYPE_2__* module; } ;
struct TYPE_17__ {int object_type_indication; int sample_size; int samples_batch_size; } ;
struct TYPE_16__ {TYPE_9__* module; } ;
typedef int MP4_BOX_TYPE_T ;



 int MP4_BOX_TYPE_SOUN ;
 int MP4_BOX_TYPE_STSD ;
 int MP4_BOX_TYPE_TEXT ;
 int MP4_BOX_TYPE_VIDE ;


 int MP4_MAX_SAMPLES_BATCH_SIZE ;
 int MP4_READ_U32 (TYPE_8__*,char*) ;
 int MP4_SKIP_U24 (TYPE_8__*,char*) ;
 int MP4_SKIP_U8 (TYPE_8__*,char*) ;



 int VC_CONTAINER_CODEC_EVRC ;
 int VC_CONTAINER_CODEC_JPEG ;
 int VC_CONTAINER_CODEC_MP1V ;
 int VC_CONTAINER_CODEC_MP2V ;

 int VC_CONTAINER_CODEC_MP4V ;
 int VC_CONTAINER_CODEC_MPGA ;



 int VC_CONTAINER_CODEC_QCELP ;
 void* VC_CONTAINER_CODEC_UNKNOWN ;
 scalar_t__ VC_CONTAINER_ERROR_CORRUPTED ;
 scalar_t__ VC_CONTAINER_ES_TYPE_AUDIO ;
 scalar_t__ VC_CONTAINER_ES_TYPE_SUBPICTURE ;
 scalar_t__ VC_CONTAINER_ES_TYPE_VIDEO ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 scalar_t__ codec_needs_batch_mode (int) ;
 int mp4_box_type_to_codec (int) ;
 scalar_t__ mp4_read_box_data (TYPE_8__*,int,int ,int ) ;
 scalar_t__ mp4_read_box_header (TYPE_8__*,int ,int*,int *) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mp4_read_box_stsd( VC_CONTAINER_T *p_ctx, int64_t size )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_TRACK_T *track = p_ctx->tracks[module->current_track];
   VC_CONTAINER_STATUS_T status;
   MP4_BOX_TYPE_T box_type;
   int64_t box_size;
   uint32_t count;

   MP4_SKIP_U8(p_ctx, "version");
   MP4_SKIP_U24(p_ctx, "flags");

   count = MP4_READ_U32(p_ctx, "entry_count");
   if(!count) return VC_CONTAINER_ERROR_CORRUPTED;

   status = mp4_read_box_header( p_ctx, size, &box_type, &box_size );
   if(status != VC_CONTAINER_SUCCESS) return status;

   track->format->codec = mp4_box_type_to_codec(box_type);
   if(!track->format->codec) track->format->codec = box_type;

   if(track->format->es_type == VC_CONTAINER_ES_TYPE_VIDEO) box_type = MP4_BOX_TYPE_VIDE;
   if(track->format->es_type == VC_CONTAINER_ES_TYPE_AUDIO) box_type = MP4_BOX_TYPE_SOUN;
   if(track->format->es_type == VC_CONTAINER_ES_TYPE_SUBPICTURE) box_type = MP4_BOX_TYPE_TEXT;
   status = mp4_read_box_data( p_ctx, box_type, box_size, MP4_BOX_TYPE_STSD );
   if(status != VC_CONTAINER_SUCCESS) return status;


   if(track->format->codec == 131)
   {
      switch (track->priv->module->object_type_indication)
      {
      case 136:
      case 140:
         track->format->codec = 131; break;
      case 143:
      case 142:
      case 144:
         track->format->codec = VC_CONTAINER_CODEC_MPGA; break;
      case 134:
      case 133:
         track->format->codec = VC_CONTAINER_CODEC_EVRC; break;
      case 146:
         track->format->codec = VC_CONTAINER_CODEC_QCELP; break;
      default:
         track->format->codec = VC_CONTAINER_CODEC_UNKNOWN; break;
      }
   }
   else if(track->format->codec == VC_CONTAINER_CODEC_MP4V)
   {
      switch (track->priv->module->object_type_indication)
      {
      case 135:
         track->format->codec = VC_CONTAINER_CODEC_MP4V; break;
      case 145:
         track->format->codec = VC_CONTAINER_CODEC_JPEG; break;
      case 137:
      case 138:
      case 140:
      case 139:
         track->format->codec = VC_CONTAINER_CODEC_MP2V; break;
      case 141:
         track->format->codec = VC_CONTAINER_CODEC_MP1V; break;
      default:
         track->format->codec = VC_CONTAINER_CODEC_UNKNOWN; break;
      }
   }


   if(codec_needs_batch_mode(track->format->codec))
      track->priv->module->samples_batch_size = MP4_MAX_SAMPLES_BATCH_SIZE;


   switch(track->format->codec)
   {
   case 132:
   case 130:
      track->format->type->audio.bits_per_sample = 8;
      track->priv->module->sample_size = track->format->type->audio.channels;
      break;
   case 128:
   case 129:
      track->priv->module->sample_size = (track->format->type->audio.bits_per_sample + 7) /
         8 * track->format->type->audio.channels;
      break;
   case 131:

      if(track->format->extradata_size >= 2)
      {
         static unsigned int rate[] =
         { 96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050,
           16000, 12000, 11025, 8000, 7350 };
         unsigned int samplerate = 0, channels = 0;
         uint8_t *p = track->format->extradata;
         uint32_t index = (p[0] & 7) << 1 | (p[1] >> 7);
         if(index == 15 && track->format->extradata_size >= 5)
         {
            samplerate = (p[1] & 0x7f) << 17 | (p[2] << 9) | (p[3] << 1) | (p[4] >> 7);
            channels = (p[4] >> 3) & 15;
         }
         else if(index < 13)
         {
            samplerate = rate[index];
            channels = (p[1] >> 3) & 15;;
         }

         if(samplerate && samplerate != track->format->type->audio.sample_rate &&
               2 * samplerate != track->format->type->audio.sample_rate)
            track->format->type->audio.sample_rate = samplerate;
         if(channels && channels != track->format->type->audio.channels &&
               2 * channels != track->format->type->audio.channels)
            track->format->type->audio.channels = channels;
      }
      break;
   default: break;
   }

   return VC_CONTAINER_SUCCESS;
}
