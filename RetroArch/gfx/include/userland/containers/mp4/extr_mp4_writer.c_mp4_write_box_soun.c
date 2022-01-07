
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_21__ {TYPE_4__* format; } ;
typedef TYPE_5__ VC_CONTAINER_TRACK_T ;
struct TYPE_22__ {TYPE_5__** tracks; TYPE_1__* priv; } ;
typedef TYPE_6__ VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_23__ {size_t current_track; scalar_t__ brand; } ;
typedef TYPE_7__ VC_CONTAINER_MODULE_T ;
struct TYPE_20__ {int codec; TYPE_3__* type; } ;
struct TYPE_18__ {unsigned int channels; int sample_rate; } ;
struct TYPE_19__ {TYPE_2__ audio; } ;
struct TYPE_17__ {TYPE_7__* module; } ;


 int MP4_BOX_TYPE_ESDS ;
 scalar_t__ MP4_BRAND_QT ;
 int STREAM_STATUS (TYPE_6__*) ;






 int WRITE_U16 (TYPE_6__*,unsigned int,char*) ;
 int WRITE_U32 (TYPE_6__*,int,char*) ;
 int WRITE_U8 (TYPE_6__*,int ,char*) ;
 int mp4_write_box (TYPE_6__*,int ) ;
 int mp4_write_box_soun_damr (TYPE_6__*) ;
 int mp4_write_box_soun_dawp (TYPE_6__*) ;
 int mp4_write_box_soun_devc (TYPE_6__*) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mp4_write_box_soun( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_TRACK_T *track = p_ctx->tracks[module->current_track];
   unsigned int i, version = 0;

   for(i = 0; i < 6; i++) WRITE_U8(p_ctx, 0, "reserved");
   WRITE_U16(p_ctx, 1, "data_reference_index");

   if(module->brand == MP4_BRAND_QT)
   {
      if(track->format->codec == 129) version = 1;
      WRITE_U16(p_ctx, version, "version");
      WRITE_U16(p_ctx, 0, "revision_level");
      WRITE_U32(p_ctx, 0, "vendor");
   }
   else
   {
      for(i = 0; i < 2; i++) WRITE_U32(p_ctx, 0, "reserved");
   }

   WRITE_U16(p_ctx, track->format->type->audio.channels, "channelcount");
   WRITE_U16(p_ctx, 0, "samplesize");
   WRITE_U16(p_ctx, 0, "pre_defined");
   WRITE_U16(p_ctx, 0, "reserved");
   WRITE_U32(p_ctx, track->format->type->audio.sample_rate << 16, "samplerate");

   if(module->brand == MP4_BRAND_QT && version == 1)
   {
      WRITE_U32(p_ctx, 1024, "samples_per_packet");
      WRITE_U32(p_ctx, 1536, "bytes_per_packet");
      WRITE_U32(p_ctx, 2, "bytes_per_frame");
      WRITE_U32(p_ctx, 2, "bytes_per_sample");
   }

   switch(track->format->codec)
   {
   case 133:
   case 132:
      return mp4_write_box_soun_damr(p_ctx);
   case 131:
      return mp4_write_box_soun_dawp(p_ctx);
   case 130:
      return mp4_write_box_soun_devc(p_ctx);
   case 129:
   case 128:
      return mp4_write_box(p_ctx, MP4_BOX_TYPE_ESDS);
   default: break;
   }

   return STREAM_STATUS(p_ctx);
}
