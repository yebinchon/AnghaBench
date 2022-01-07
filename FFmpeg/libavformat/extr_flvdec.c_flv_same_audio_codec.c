
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int codec_id; int codec_tag; int bits_per_coded_sample; int sample_rate; } ;
typedef TYPE_1__ AVCodecParameters ;


 int AV_CODEC_ID_AAC ;
 int AV_CODEC_ID_ADPCM_SWF ;
 int AV_CODEC_ID_MP3 ;
 int AV_CODEC_ID_NELLYMOSER ;
 int AV_CODEC_ID_PCM_ALAW ;
 int AV_CODEC_ID_PCM_MULAW ;
 int AV_CODEC_ID_PCM_S16BE ;
 int AV_CODEC_ID_PCM_S16LE ;
 int AV_CODEC_ID_PCM_U8 ;
 int AV_CODEC_ID_SPEEX ;
 int FLV_AUDIO_CODECID_MASK ;
 int FLV_AUDIO_CODECID_OFFSET ;
 int FLV_AUDIO_SAMPLESIZE_MASK ;
__attribute__((used)) static int flv_same_audio_codec(AVCodecParameters *apar, int flags)
{
    int bits_per_coded_sample = (flags & FLV_AUDIO_SAMPLESIZE_MASK) ? 16 : 8;
    int flv_codecid = flags & FLV_AUDIO_CODECID_MASK;
    int codec_id;

    if (!apar->codec_id && !apar->codec_tag)
        return 1;

    if (apar->bits_per_coded_sample != bits_per_coded_sample)
        return 0;

    switch (flv_codecid) {

    case 132:
        codec_id = bits_per_coded_sample == 8
                   ? AV_CODEC_ID_PCM_U8



                   : AV_CODEC_ID_PCM_S16LE;

        return codec_id == apar->codec_id;
    case 130:
        codec_id = bits_per_coded_sample == 8
                   ? AV_CODEC_ID_PCM_U8
                   : AV_CODEC_ID_PCM_S16LE;
        return codec_id == apar->codec_id;
    case 138:
        return apar->codec_id == AV_CODEC_ID_AAC;
    case 137:
        return apar->codec_id == AV_CODEC_ID_ADPCM_SWF;
    case 128:
        return apar->codec_id == AV_CODEC_ID_SPEEX;
    case 136:
        return apar->codec_id == AV_CODEC_ID_MP3;
    case 133:
    case 134:
    case 135:
        return apar->codec_id == AV_CODEC_ID_NELLYMOSER;
    case 129:
        return apar->sample_rate == 8000 &&
               apar->codec_id == AV_CODEC_ID_PCM_MULAW;
    case 131:
        return apar->sample_rate == 8000 &&
               apar->codec_id == AV_CODEC_ID_PCM_ALAW;
    default:
        return apar->codec_tag == (flv_codecid >> FLV_AUDIO_CODECID_OFFSET);
    }
}
