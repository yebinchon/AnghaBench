
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_19__ {TYPE_4__* format; } ;
typedef TYPE_5__ VC_CONTAINER_TRACK_T ;
struct TYPE_20__ {TYPE_5__** tracks; TYPE_1__* priv; } ;
typedef TYPE_6__ VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_21__ {size_t current_track; } ;
typedef TYPE_7__ VC_CONTAINER_MODULE_T ;
struct TYPE_18__ {int extradata_size; int es_type; int codec; int extradata; int bitrate; TYPE_3__* type; } ;
struct TYPE_16__ {int sample_rate; } ;
struct TYPE_17__ {TYPE_2__ audio; } ;
struct TYPE_15__ {TYPE_7__* module; } ;


 unsigned int MP4_GET_DESCRIPTOR_SIZE (int) ;
 int MP4_WRITE_DESCRIPTOR_HEADER (int,int) ;
 int STREAM_STATUS (TYPE_6__*) ;






 int VC_CONTAINER_ERROR_TRACK_FORMAT_NOT_SUPPORTED ;



 int WRITE_BYTES (TYPE_6__*,int ,int) ;
 int WRITE_U16 (TYPE_6__*,int,char*) ;
 int WRITE_U24 (TYPE_6__*,int,char*) ;
 int WRITE_U32 (TYPE_6__*,int ,char*) ;
 int WRITE_U8 (TYPE_6__*,int,char*) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mp4_write_box_esds( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_TRACK_T *track = p_ctx->tracks[module->current_track];
   unsigned int decoder_specific_size = 0, decoder_config_size, sl_size;
   unsigned int stream_type, object_type;
   if(track->format->extradata_size > 0x200000 - 100)
      return VC_CONTAINER_ERROR_TRACK_FORMAT_NOT_SUPPORTED;

   switch(track->format->es_type)
   {
   case 128: stream_type = 0x4; break;
   case 130: stream_type = 0x5; break;
   case 129: stream_type = 0x20; break;
   default: return VC_CONTAINER_ERROR_TRACK_FORMAT_NOT_SUPPORTED;
   }
   switch(track->format->codec)
   {
   case 132: object_type = 0x20; break;
   case 135: object_type = 0x6B; break;
   case 134: object_type = 0x60; break;
   case 136: object_type = 0x6C; break;
   case 133: object_type = 0x40; break;
   case 131:
      object_type = track->format->type->audio.sample_rate < 32000 ? 0x69 : 0x6B; break;
   default: return VC_CONTAINER_ERROR_TRACK_FORMAT_NOT_SUPPORTED;
   }

   decoder_specific_size = ((track->format->extradata_size) < 0x0080) ? 2 + (track->format->extradata_size) : ((track->format->extradata_size) < 0x4000) ? 3 + (track->format->extradata_size) : 4 + (track->format->extradata_size);
   decoder_config_size = ((13 + decoder_specific_size) < 0x0080) ? 2 + (13 + decoder_specific_size) : ((13 + decoder_specific_size) < 0x4000) ? 3 + (13 + decoder_specific_size) : 4 + (13 + decoder_specific_size);
   sl_size = ((1) < 0x0080) ? 2 + (1) : ((1) < 0x4000) ? 3 + (1) : 4 + (1);

   WRITE_U8(p_ctx, 0, "version");
   WRITE_U24(p_ctx, 0, "flags");


   LOG_FORMAT(p_ctx, "descriptor %x, size %i", 0x3, 3 + decoder_config_size + sl_size); _WRITE_U8(p_ctx, 0x3); if((3 + decoder_config_size + sl_size) >= 0x4000) _WRITE_U8(p_ctx, (((3 + decoder_config_size + sl_size) >> 14) & 0x7F) | 0x80); if((3 + decoder_config_size + sl_size) >= 0x80 ) _WRITE_U8(p_ctx, (((3 + decoder_config_size + sl_size) >> 7 ) & 0x7F) | 0x80); _WRITE_U8(p_ctx, (3 + decoder_config_size + sl_size) & 0x7F);
   WRITE_U16(p_ctx, module->current_track + 1, "es_id");
   WRITE_U8(p_ctx, 0x1f, "flags");


   LOG_FORMAT(p_ctx, "descriptor %x, size %i", 0x4, 13 + decoder_specific_size); _WRITE_U8(p_ctx, 0x4); if((13 + decoder_specific_size) >= 0x4000) _WRITE_U8(p_ctx, (((13 + decoder_specific_size) >> 14) & 0x7F) | 0x80); if((13 + decoder_specific_size) >= 0x80 ) _WRITE_U8(p_ctx, (((13 + decoder_specific_size) >> 7 ) & 0x7F) | 0x80); _WRITE_U8(p_ctx, (13 + decoder_specific_size) & 0x7F);
   WRITE_U8(p_ctx, object_type, "object_type_indication");
   WRITE_U8(p_ctx, (stream_type << 2) | 1, "stream_type");
   WRITE_U24(p_ctx, 8000, "buffer_size_db");
   WRITE_U32(p_ctx, track->format->bitrate, "max_bitrate");
   WRITE_U32(p_ctx, track->format->bitrate, "avg_bitrate");
   if(track->format->extradata_size)
   {
      LOG_FORMAT(p_ctx, "descriptor %x, size %i", 0x5, track->format->extradata_size); _WRITE_U8(p_ctx, 0x5); if((track->format->extradata_size) >= 0x4000) _WRITE_U8(p_ctx, (((track->format->extradata_size) >> 14) & 0x7F) | 0x80); if((track->format->extradata_size) >= 0x80 ) _WRITE_U8(p_ctx, (((track->format->extradata_size) >> 7 ) & 0x7F) | 0x80); _WRITE_U8(p_ctx, (track->format->extradata_size) & 0x7F);
      WRITE_BYTES(p_ctx, track->format->extradata, track->format->extradata_size);
   }


   LOG_FORMAT(p_ctx, "descriptor %x, size %i", 0x6, 1); _WRITE_U8(p_ctx, 0x6); if((1) >= 0x4000) _WRITE_U8(p_ctx, (((1) >> 14) & 0x7F) | 0x80); if((1) >= 0x80 ) _WRITE_U8(p_ctx, (((1) >> 7 ) & 0x7F) | 0x80); _WRITE_U8(p_ctx, (1) & 0x7F);
   WRITE_U8(p_ctx, 0x2, "flags");

   return STREAM_STATUS(p_ctx);
}
