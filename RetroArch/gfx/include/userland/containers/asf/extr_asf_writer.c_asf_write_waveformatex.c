
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* format; } ;
typedef TYPE_4__ VC_CONTAINER_TRACK_T ;
typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_8__ {int extradata_size; int extradata; TYPE_2__* type; int bitrate; int codec; } ;
struct TYPE_6__ {int bits_per_sample; int block_align; int sample_rate; int channels; } ;
struct TYPE_7__ {TYPE_1__ audio; } ;


 int VC_CONTAINER_SUCCESS ;
 int WRITE_BYTES (int *,int ,int ) ;
 int WRITE_U16 (int *,int ,char*) ;
 int WRITE_U32 (int *,int ,char*) ;
 int codec_to_waveformat (int ) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T asf_write_waveformatex( VC_CONTAINER_T *p_ctx,
   VC_CONTAINER_TRACK_T *p_track)
{

   WRITE_U16(p_ctx, codec_to_waveformat(p_track->format->codec), "Codec ID");
   WRITE_U16(p_ctx, p_track->format->type->audio.channels, "Number of Channels");
   WRITE_U32(p_ctx, p_track->format->type->audio.sample_rate, "Samples per Second");
   WRITE_U32(p_ctx, p_track->format->bitrate, "Average Number of Bytes Per Second");
   WRITE_U16(p_ctx, p_track->format->type->audio.block_align, "Block Alignment");
   WRITE_U16(p_ctx, p_track->format->type->audio.bits_per_sample, "Bits Per Sample");
   WRITE_U16(p_ctx, p_track->format->extradata_size, "Codec Specific Data Size");
   WRITE_BYTES(p_ctx, p_track->format->extradata, p_track->format->extradata_size);

   return VC_CONTAINER_SUCCESS;
}
