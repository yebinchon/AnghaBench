
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_14__ {int * pb; TYPE_2__* priv_data; } ;
struct TYPE_13__ {TYPE_1__* codecpar; int need_parsing; void* duration; } ;
struct TYPE_12__ {int channels; int extended_size; } ;
struct TYPE_11__ {int bit_rate; int codec_tag; int channels; int sample_rate; int codec_type; int codec_id; } ;
typedef TYPE_2__ LXFDemuxContext ;
typedef TYPE_3__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AVERROR_INVALIDDATA ;
 int AVMEDIA_TYPE_AUDIO ;
 int AVMEDIA_TYPE_VIDEO ;
 int AVSTREAM_PARSE_HEADERS ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int AV_RL16 (int *) ;
 void* AV_RL32 (int *) ;
 int ENOMEM ;
 int LXF_HEADER_DATA_SIZE ;
 int LXF_SAMPLERATE ;
 int av_log (TYPE_4__*,int ,char*,...) ;
 TYPE_3__* avformat_new_stream (TYPE_4__*,int *) ;
 int avio_read (int *,int *,int) ;
 int avio_skip (int *,int ) ;
 int avpriv_set_pts_info (TYPE_3__*,int,int,int ) ;
 int ff_codec_get_id (int ,int) ;
 int get_packet_header (TYPE_4__*) ;
 int lxf_tags ;

__attribute__((used)) static int lxf_read_header(AVFormatContext *s)
{
    LXFDemuxContext *lxf = s->priv_data;
    AVIOContext *pb = s->pb;
    uint8_t header_data[LXF_HEADER_DATA_SIZE];
    int ret;
    AVStream *st;
    uint32_t video_params, disk_params;
    uint16_t record_date, expiration_date;

    if ((ret = get_packet_header(s)) < 0)
        return ret;

    if (ret != LXF_HEADER_DATA_SIZE) {
        av_log(s, AV_LOG_ERROR, "expected %d B size header, got %d\n",
               LXF_HEADER_DATA_SIZE, ret);
        return AVERROR_INVALIDDATA;
    }

    if ((ret = avio_read(pb, header_data, LXF_HEADER_DATA_SIZE)) != LXF_HEADER_DATA_SIZE)
        return ret < 0 ? ret : AVERROR_EOF;

    if (!(st = avformat_new_stream(s, ((void*)0))))
        return AVERROR(ENOMEM);

    st->duration = AV_RL32(&header_data[32]);
    video_params = AV_RL32(&header_data[40]);
    record_date = AV_RL16(&header_data[56]);
    expiration_date = AV_RL16(&header_data[58]);
    disk_params = AV_RL32(&header_data[116]);

    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->bit_rate = 1000000 * ((video_params >> 14) & 0xFF);
    st->codecpar->codec_tag = video_params & 0xF;
    st->codecpar->codec_id = ff_codec_get_id(lxf_tags, st->codecpar->codec_tag);
    st->need_parsing = AVSTREAM_PARSE_HEADERS;

    av_log(s, AV_LOG_DEBUG, "record: %x = %i-%02i-%02i\n",
           record_date, 1900 + (record_date & 0x7F), (record_date >> 7) & 0xF,
           (record_date >> 11) & 0x1F);

    av_log(s, AV_LOG_DEBUG, "expire: %x = %i-%02i-%02i\n",
           expiration_date, 1900 + (expiration_date & 0x7F), (expiration_date >> 7) & 0xF,
           (expiration_date >> 11) & 0x1F);

    if ((video_params >> 22) & 1)
        av_log(s, AV_LOG_WARNING, "VBI data not yet supported\n");

    if ((lxf->channels = 1 << (disk_params >> 4 & 3) + 1)) {
        if (!(st = avformat_new_stream(s, ((void*)0))))
            return AVERROR(ENOMEM);

        st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
        st->codecpar->sample_rate = LXF_SAMPLERATE;
        st->codecpar->channels = lxf->channels;

        avpriv_set_pts_info(st, 64, 1, st->codecpar->sample_rate);
    }

    avio_skip(s->pb, lxf->extended_size);

    return 0;
}
