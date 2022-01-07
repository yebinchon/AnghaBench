
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef scalar_t__ int64_t ;
struct TYPE_13__ {TYPE_5__* format; TYPE_4__* priv; } ;
typedef TYPE_6__ VC_CONTAINER_TRACK_T ;
typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_12__ {int bitrate; int extradata; int extradata_size; TYPE_2__* type; int codec; } ;
struct TYPE_11__ {TYPE_3__* module; } ;
struct TYPE_10__ {int extradata; } ;
struct TYPE_8__ {int sample_rate; void* bits_per_sample; void* block_align; void* channels; } ;
struct TYPE_9__ {TYPE_1__ audio; } ;


 scalar_t__ ASF_EXTRADATA_MAX ;
 int ASF_READ_BYTES (int *,scalar_t__,int ,scalar_t__) ;
 void* ASF_READ_U16 (int *,scalar_t__,char*) ;
 int ASF_READ_U32 (int *,scalar_t__,char*) ;
 int CHECK_POINT (int *,scalar_t__) ;
 int LOG_DEBUG (int *,char*) ;
 int STREAM_STATUS (int *) ;
 int VC_CONTAINER_ERROR_CORRUPTED ;
 int VC_CONTAINER_SUCCESS ;
 int waveformat_to_codec (void*) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T asf_read_waveformatex( VC_CONTAINER_T *p_ctx,
   VC_CONTAINER_TRACK_T *p_track, int64_t size)
{
   uint16_t extradata_size;


   p_track->format->codec = waveformat_to_codec(ASF_READ_U16(p_ctx, size, "Codec ID"));
   p_track->format->type->audio.channels = ASF_READ_U16(p_ctx, size, "Number of Channels");
   p_track->format->type->audio.sample_rate = ASF_READ_U32(p_ctx, size, "Samples per Second");
   p_track->format->bitrate = ASF_READ_U32(p_ctx, size, "Average Number of Bytes Per Second") * 8;
   p_track->format->type->audio.block_align = ASF_READ_U16(p_ctx, size, "Block Alignment");
   p_track->format->type->audio.bits_per_sample = ASF_READ_U16(p_ctx, size, "Bits Per Sample");
   extradata_size = ASF_READ_U16(p_ctx, size, "Codec Specific Data Size");

   CHECK_POINT(p_ctx, size);

   if(!extradata_size) return VC_CONTAINER_SUCCESS;


   if(extradata_size > size) return VC_CONTAINER_ERROR_CORRUPTED;

   if(extradata_size > ASF_EXTRADATA_MAX)
   {
      LOG_DEBUG(p_ctx, "extradata truncated");
      extradata_size = ASF_EXTRADATA_MAX;
   }
   p_track->format->extradata = p_track->priv->module->extradata;
   p_track->format->extradata_size = ASF_READ_BYTES(p_ctx, size, p_track->format->extradata, extradata_size);

   return STREAM_STATUS(p_ctx);
}
