
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int need_parsing; TYPE_1__* codecpar; } ;
struct TYPE_10__ {int fc; int dv_demux; int dv_fctx; } ;
struct TYPE_9__ {int time_scale; int dv_audio_container; int samples_per_frame; int bytes_per_frame; } ;
struct TYPE_8__ {scalar_t__ codec_type; int sample_rate; int codec_id; int channels; int block_align; int extradata_size; int extradata; int codec_tag; } ;
typedef TYPE_2__ MOVStreamContext ;
typedef TYPE_3__ MOVContext ;
typedef TYPE_4__ AVStream ;
typedef int AVIOContext ;


 int AVERROR (int ) ;
 scalar_t__ AVMEDIA_TYPE_AUDIO ;
 int AVSTREAM_PARSE_FULL ;
 int AV_CODEC_ID_PCM_S16LE ;





 int AV_LOG_ERROR ;
 int AV_RB32 (int ) ;
 int AV_RB8 (int ) ;
 int ENOMEM ;
 int MKTAG (char,char,char,char) ;
 int av_log (int ,int ,char*) ;
 int avformat_alloc_context () ;
 int avpriv_dv_init_demux (int ) ;

__attribute__((used)) static int mov_finalize_stsd_codec(MOVContext *c, AVIOContext *pb,
                                   AVStream *st, MOVStreamContext *sc)
{
    if (st->codecpar->codec_type == AVMEDIA_TYPE_AUDIO &&
        !st->codecpar->sample_rate && sc->time_scale > 1)
        st->codecpar->sample_rate = sc->time_scale;


    switch (st->codecpar->codec_id) {
    case 132:
        st->codecpar->channels = 1;

        if (st->codecpar->codec_tag != MKTAG('Q','c','l','p'))
            st->codecpar->sample_rate = 8000;

        sc->samples_per_frame = 160;
        if (!sc->bytes_per_frame)
            sc->bytes_per_frame = 35;
        break;
    case 143:
        st->codecpar->channels = 1;

        st->codecpar->sample_rate = 8000;
        break;
    case 142:
        st->codecpar->channels = 1;
        st->codecpar->sample_rate = 16000;
        break;
    case 135:
    case 134:

        st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
        break;
    case 139:
    case 145:
    case 146:
    case 138:
    case 137:
    case 136:
    case 131:
        st->codecpar->block_align = sc->bytes_per_frame;
        break;
    case 144:
        if (st->codecpar->extradata_size == 36) {
            st->codecpar->channels = AV_RB8 (st->codecpar->extradata + 21);
            st->codecpar->sample_rate = AV_RB32(st->codecpar->extradata + 32);
        }
        break;
    case 147:
    case 140:
    case 133:
    case 130:
    case 129:
    case 128:
        st->need_parsing = AVSTREAM_PARSE_FULL;
        break;
    default:
        break;
    }
    return 0;
}
