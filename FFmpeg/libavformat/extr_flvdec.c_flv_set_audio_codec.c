
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int bits_per_coded_sample; int sample_rate; int codec_tag; void* codec_id; } ;
struct TYPE_5__ {int need_parsing; } ;
typedef TYPE_1__ AVStream ;
typedef int AVFormatContext ;
typedef TYPE_2__ AVCodecParameters ;


 int AVSTREAM_PARSE_FULL ;
 void* AV_CODEC_ID_AAC ;
 void* AV_CODEC_ID_ADPCM_SWF ;
 void* AV_CODEC_ID_MP3 ;
 void* AV_CODEC_ID_NELLYMOSER ;
 void* AV_CODEC_ID_PCM_ALAW ;
 void* AV_CODEC_ID_PCM_MULAW ;
 void* AV_CODEC_ID_PCM_S16BE ;
 void* AV_CODEC_ID_PCM_S16LE ;
 void* AV_CODEC_ID_PCM_U8 ;
 void* AV_CODEC_ID_SPEEX ;
 int FLV_AUDIO_CODECID_OFFSET ;
 int avpriv_request_sample (int *,char*,int) ;

__attribute__((used)) static void flv_set_audio_codec(AVFormatContext *s, AVStream *astream,
                                AVCodecParameters *apar, int flv_codecid)
{
    switch (flv_codecid) {

    case 132:
        apar->codec_id = apar->bits_per_coded_sample == 8
                           ? AV_CODEC_ID_PCM_U8



                           : AV_CODEC_ID_PCM_S16LE;

        break;
    case 130:
        apar->codec_id = apar->bits_per_coded_sample == 8
                           ? AV_CODEC_ID_PCM_U8
                           : AV_CODEC_ID_PCM_S16LE;
        break;
    case 138:
        apar->codec_id = AV_CODEC_ID_AAC;
        break;
    case 137:
        apar->codec_id = AV_CODEC_ID_ADPCM_SWF;
        break;
    case 128:
        apar->codec_id = AV_CODEC_ID_SPEEX;
        apar->sample_rate = 16000;
        break;
    case 136:
        apar->codec_id = AV_CODEC_ID_MP3;
        astream->need_parsing = AVSTREAM_PARSE_FULL;
        break;
    case 133:

        apar->sample_rate = 8000;
        apar->codec_id = AV_CODEC_ID_NELLYMOSER;
        break;
    case 134:
        apar->sample_rate = 16000;
        apar->codec_id = AV_CODEC_ID_NELLYMOSER;
        break;
    case 135:
        apar->codec_id = AV_CODEC_ID_NELLYMOSER;
        break;
    case 129:
        apar->sample_rate = 8000;
        apar->codec_id = AV_CODEC_ID_PCM_MULAW;
        break;
    case 131:
        apar->sample_rate = 8000;
        apar->codec_id = AV_CODEC_ID_PCM_ALAW;
        break;
    default:
        avpriv_request_sample(s, "Audio codec (%x)",
               flv_codecid >> FLV_AUDIO_CODECID_OFFSET);
        apar->codec_tag = flv_codecid >> FLV_AUDIO_CODECID_OFFSET;
    }
}
