
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int channels; int block_align; void* sample_rate; int codec_id; int extradata; int extradata_size; int codec_type; } ;
struct TYPE_11__ {int pb; } ;
struct TYPE_10__ {TYPE_4__* codecpar; int duration; int need_parsing; } ;
typedef TYPE_1__ AVStream ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 int AVMEDIA_TYPE_AUDIO ;
 int AVSTREAM_PARSE_FULL_RAW ;
 int AV_CODEC_ID_ADPCM_PSX ;
 int AV_CODEC_ID_ATRAC3 ;
 int AV_CODEC_ID_MP3 ;
 int AV_CODEC_ID_PCM_S16BE ;
 int AV_CODEC_ID_PCM_S16LE ;
 int AV_WL16 (int ,int) ;
 int ENOMEM ;
 int INT_MAX ;
 int av_get_audio_frame_duration2 (TYPE_4__*,unsigned int) ;
 TYPE_1__* avformat_new_stream (TYPE_2__*,int *) ;
 void* avio_rb32 (int ) ;
 int avio_skip (int ,int) ;
 int avio_tell (int ) ;
 int avpriv_request_sample (TYPE_2__*,char*,unsigned int) ;
 int avpriv_set_pts_info (TYPE_1__*,int,int,void*) ;
 int ff_alloc_extradata (TYPE_4__*,int) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static int msf_read_header(AVFormatContext *s)
{
    unsigned codec, size;
    AVStream *st;
    int ret;

    avio_skip(s->pb, 4);

    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);

    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    codec = avio_rb32(s->pb);
    st->codecpar->channels = avio_rb32(s->pb);
    if (st->codecpar->channels <= 0 || st->codecpar->channels >= INT_MAX / 1024)
        return AVERROR_INVALIDDATA;
    size = avio_rb32(s->pb);
    st->codecpar->sample_rate = avio_rb32(s->pb);
    if (st->codecpar->sample_rate <= 0)
        return AVERROR_INVALIDDATA;

    switch (codec) {
    case 0: st->codecpar->codec_id = AV_CODEC_ID_PCM_S16BE; break;
    case 1: st->codecpar->codec_id = AV_CODEC_ID_PCM_S16LE; break;
    case 3: st->codecpar->block_align = 16 * st->codecpar->channels;
            st->codecpar->codec_id = AV_CODEC_ID_ADPCM_PSX; break;
    case 4:
    case 5:
    case 6: st->codecpar->block_align = (codec == 4 ? 96 : codec == 5 ? 152 : 192) * st->codecpar->channels;
            ret = ff_alloc_extradata(st->codecpar, 14);
            if (ret < 0)
                return ret;
            memset(st->codecpar->extradata, 0, st->codecpar->extradata_size);
            AV_WL16(st->codecpar->extradata, 1);
            AV_WL16(st->codecpar->extradata+2, 2048 * st->codecpar->channels);
            AV_WL16(st->codecpar->extradata+6, codec == 4 ? 1 : 0);
            AV_WL16(st->codecpar->extradata+8, codec == 4 ? 1 : 0);
            AV_WL16(st->codecpar->extradata+10, 1);
            st->codecpar->codec_id = AV_CODEC_ID_ATRAC3; break;
    case 7: st->need_parsing = AVSTREAM_PARSE_FULL_RAW;
            st->codecpar->codec_id = AV_CODEC_ID_MP3; break;
    default:
            avpriv_request_sample(s, "Codec %d", codec);
            return AVERROR_PATCHWELCOME;
    }
    st->duration = av_get_audio_frame_duration2(st->codecpar, size);
    avio_skip(s->pb, 0x40 - avio_tell(s->pb));
    avpriv_set_pts_info(st, 64, 1, st->codecpar->sample_rate);

    return 0;
}
