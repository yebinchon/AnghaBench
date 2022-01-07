
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * pb; TYPE_1__* priv_data; } ;
struct TYPE_4__ {int audio_codec; void* num_channels; void* bytes; void* sample_rate; } ;
typedef TYPE_1__ EaDemuxContext ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int AV_CODEC_ID_ADPCM_IMA_EA_SEAD ;
 void* avio_rl32 (int *) ;

__attribute__((used)) static void process_audio_header_sead(AVFormatContext *s)
{
    EaDemuxContext *ea = s->priv_data;
    AVIOContext *pb = s->pb;

    ea->sample_rate = avio_rl32(pb);
    ea->bytes = avio_rl32(pb);
    ea->num_channels = avio_rl32(pb);
    ea->audio_codec = AV_CODEC_ID_ADPCM_IMA_EA_SEAD;
}
