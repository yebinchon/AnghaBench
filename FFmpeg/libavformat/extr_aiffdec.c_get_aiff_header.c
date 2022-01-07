
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64_t ;
typedef int int64_t ;
struct TYPE_12__ {int block_duration; } ;
struct TYPE_11__ {int channels; int bits_per_coded_sample; int sample_rate; int codec_id; int block_align; int bit_rate; int codec_tag; int codec_type; } ;
struct TYPE_10__ {TYPE_4__* priv_data; TYPE_1__** streams; int * pb; } ;
struct TYPE_9__ {TYPE_3__* codecpar; } ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;
typedef TYPE_3__ AVCodecParameters ;
typedef TYPE_4__ AIFFInputContext ;


 unsigned int AIFF ;
 unsigned int AIFF_C_VERSION1 ;
 int AVERROR_INVALIDDATA ;
 int AVMEDIA_TYPE_AUDIO ;







 int AV_CODEC_ID_NONE ;




 int AV_CODEC_ID_PCM_S16BE ;


 int AV_LOG_ERROR ;
 int aiff_codec_get_id (int) ;
 int av_fourcc2str (int ) ;
 int av_get_audio_frame_duration2 (TYPE_3__*,int) ;
 int av_get_bits_per_sample (int) ;
 int av_log (TYPE_2__*,int ,char*,int) ;
 int avio_rb16 (int *) ;
 unsigned int avio_rb32 (int *) ;
 int avio_rb64 (int *) ;
 int avio_rl32 (int *) ;
 int avio_skip (int *,int) ;
 int avpriv_request_sample (TYPE_2__*,char*,int ) ;
 int ff_codec_aiff_tags ;
 int ff_codec_get_id (int ,int ) ;

__attribute__((used)) static int get_aiff_header(AVFormatContext *s, int size,
                                    unsigned version)
{
    AVIOContext *pb = s->pb;
    AVCodecParameters *par = s->streams[0]->codecpar;
    AIFFInputContext *aiff = s->priv_data;
    int exp;
    uint64_t val;
    int sample_rate;
    unsigned int num_frames;

    if (size & 1)
        size++;
    par->codec_type = AVMEDIA_TYPE_AUDIO;
    par->channels = avio_rb16(pb);
    num_frames = avio_rb32(pb);
    par->bits_per_coded_sample = avio_rb16(pb);

    exp = avio_rb16(pb) - 16383 - 63;
    val = avio_rb64(pb);
    if (exp <-63 || exp >63) {
        av_log(s, AV_LOG_ERROR, "exp %d is out of range\n", exp);
        return AVERROR_INVALIDDATA;
    }
    if (exp >= 0)
        sample_rate = val << exp;
    else
        sample_rate = (val + (1ULL<<(-exp-1))) >> -exp;
    par->sample_rate = sample_rate;
    size -= 18;


    if (size < 4) {
        version = AIFF;
    } else if (version == AIFF_C_VERSION1) {
        par->codec_tag = avio_rl32(pb);
        par->codec_id = ff_codec_get_id(ff_codec_aiff_tags, par->codec_tag);
        if (par->codec_id == AV_CODEC_ID_NONE)
            avpriv_request_sample(s, "unknown or unsupported codec tag: %s",
                                  av_fourcc2str(par->codec_tag));
        size -= 4;
    }

    if (version != AIFF_C_VERSION1 || par->codec_id == AV_CODEC_ID_PCM_S16BE) {
        par->codec_id = aiff_codec_get_id(par->bits_per_coded_sample);
        par->bits_per_coded_sample = av_get_bits_per_sample(par->codec_id);
        aiff->block_duration = 1;
    } else {
        switch (par->codec_id) {
        case 132:
        case 131:
        case 129:
        case 133:
        case 130:
            aiff->block_duration = 1;
            break;
        case 138:
            par->block_align = 34 * par->channels;
            break;
        case 135:
            par->block_align = 2 * par->channels;
            break;
        case 139:
            par->bits_per_coded_sample = 5;
        case 137:
        case 140:
        case 134:
        case 128:
            par->block_align = 1 * par->channels;
            break;
        case 136:
            par->block_align = 33;
            break;
        default:
            aiff->block_duration = 1;
            break;
        }
        if (par->block_align > 0)
            aiff->block_duration = av_get_audio_frame_duration2(par,
                                                                par->block_align);
    }



    if (!par->block_align)
        par->block_align = (av_get_bits_per_sample(par->codec_id) * par->channels) >> 3;

    if (aiff->block_duration) {
        par->bit_rate = (int64_t)par->sample_rate * (par->block_align << 3) /
                        aiff->block_duration;
    }


    if (size)
        avio_skip(pb, size);

    return num_frames;
}
