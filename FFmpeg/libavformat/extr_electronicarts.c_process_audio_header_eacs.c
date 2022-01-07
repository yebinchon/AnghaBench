
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * pb; TYPE_1__* priv_data; } ;
struct TYPE_5__ {int bytes; int audio_codec; void* num_channels; scalar_t__ big_endian; int sample_rate; } ;
typedef TYPE_1__ EaDemuxContext ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int AV_CODEC_ID_ADPCM_IMA_EA_EACS ;
 int AV_CODEC_ID_PCM_MULAW ;
 int AV_CODEC_ID_PCM_S16LE ;
 int AV_CODEC_ID_PCM_S8 ;
 void* avio_r8 (int *) ;
 int avio_rb32 (int *) ;
 int avio_rl32 (int *) ;
 int avio_skip (int *,int) ;
 int avpriv_request_sample (TYPE_2__*,char*,int) ;

__attribute__((used)) static void process_audio_header_eacs(AVFormatContext *s)
{
    EaDemuxContext *ea = s->priv_data;
    AVIOContext *pb = s->pb;
    int compression_type;

    ea->sample_rate = ea->big_endian ? avio_rb32(pb) : avio_rl32(pb);
    ea->bytes = avio_r8(pb);
    ea->num_channels = avio_r8(pb);
    compression_type = avio_r8(pb);
    avio_skip(pb, 13);

    switch (compression_type) {
    case 0:
        switch (ea->bytes) {
        case 1:
            ea->audio_codec = AV_CODEC_ID_PCM_S8;
            break;
        case 2:
            ea->audio_codec = AV_CODEC_ID_PCM_S16LE;
            break;
        }
        break;
    case 1:
        ea->audio_codec = AV_CODEC_ID_PCM_MULAW;
        ea->bytes = 1;
        break;
    case 2:
        ea->audio_codec = AV_CODEC_ID_ADPCM_IMA_EA_EACS;
        break;
    default:
        avpriv_request_sample(s,
                              "stream type; audio compression_type=%i",
                              compression_type);
    }
}
