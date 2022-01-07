
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int const codec_id; scalar_t__ codec_type; int sample_rate; int extradata_size; int* extradata; int channels; int block_align; } ;
struct TYPE_12__ {scalar_t__ id; TYPE_7__* codecpar; } ;
struct TYPE_11__ {int nb_streams; scalar_t__ payload_type; int base_timestamp; int timestamp; int ssrc; int first_packet; int start_time_realtime; int seq; int flags; int packet_size; int max_payload_size; int nal_length_size; int max_frames_per_packet; scalar_t__ buf; int strict_std_compliance; scalar_t__ buf_ptr; TYPE_1__* pb; scalar_t__ first_rtcp_ntp_time; scalar_t__ cur_timestamp; TYPE_3__** streams; struct TYPE_11__* priv_data; } ;
struct TYPE_10__ {int max_packet_size; } ;
typedef TYPE_2__ RTPMuxContext ;
typedef TYPE_3__ AVStream ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_EXPERIMENTAL ;
 int AVFMT_FLAG_BITEXACT ;
 scalar_t__ AVMEDIA_TYPE_AUDIO ;
 int AV_LOG_ERROR ;
 int AV_NOPTS_VALUE ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int FFMIN (int,int) ;
 int FF_COMPLIANCE_EXPERIMENTAL ;
 scalar_t__ NTP_OFFSET_US ;
 scalar_t__ RTP_PT_PRIVATE ;
 int TS_PACKET_SIZE ;
 int av_freep (scalar_t__*) ;
 int av_get_random_seed () ;
 int av_log (TYPE_2__*,int ,char*,...) ;
 scalar_t__ av_malloc (int) ;
 int avcodec_get_name (int const) ;
 int avpriv_set_pts_info (TYPE_3__*,int,int,int) ;
 scalar_t__ ff_ntp_time () ;
 scalar_t__ ff_rtp_get_payload_type (TYPE_2__*,TYPE_7__*,int) ;
 int is_supported (int const) ;

__attribute__((used)) static int rtp_write_header(AVFormatContext *s1)
{
    RTPMuxContext *s = s1->priv_data;
    int n, ret = AVERROR(EINVAL);
    AVStream *st;

    if (s1->nb_streams != 1) {
        av_log(s1, AV_LOG_ERROR, "Only one stream supported in the RTP muxer\n");
        return AVERROR(EINVAL);
    }
    st = s1->streams[0];
    if (!is_supported(st->codecpar->codec_id)) {
        av_log(s1, AV_LOG_ERROR, "Unsupported codec %s\n", avcodec_get_name(st->codecpar->codec_id));

        return -1;
    }

    if (s->payload_type < 0) {

        if (st->id < RTP_PT_PRIVATE)
            st->id = ff_rtp_get_payload_type(s1, st->codecpar, -1);

        s->payload_type = st->id;
    } else {

        st->id = s->payload_type;
    }

    s->base_timestamp = av_get_random_seed();
    s->timestamp = s->base_timestamp;
    s->cur_timestamp = 0;
    if (!s->ssrc)
        s->ssrc = av_get_random_seed();
    s->first_packet = 1;
    s->first_rtcp_ntp_time = ff_ntp_time();
    if (s1->start_time_realtime != 0 && s1->start_time_realtime != AV_NOPTS_VALUE)

        s->first_rtcp_ntp_time = (s1->start_time_realtime / 1000) * 1000 +
                                 NTP_OFFSET_US;



    if (s->seq < 0) {
        if (s1->flags & AVFMT_FLAG_BITEXACT) {
            s->seq = 0;
        } else
            s->seq = av_get_random_seed() & 0x0fff;
    } else
        s->seq &= 0xffff;

    if (s1->packet_size) {
        if (s1->pb->max_packet_size)
            s1->packet_size = FFMIN(s1->packet_size,
                                    s1->pb->max_packet_size);
    } else
        s1->packet_size = s1->pb->max_packet_size;
    if (s1->packet_size <= 12) {
        av_log(s1, AV_LOG_ERROR, "Max packet size %u too low\n", s1->packet_size);
        return AVERROR(EIO);
    }
    s->buf = av_malloc(s1->packet_size);
    if (!s->buf) {
        return AVERROR(ENOMEM);
    }
    s->max_payload_size = s1->packet_size - 12;

    if (st->codecpar->codec_type == AVMEDIA_TYPE_AUDIO) {
        avpriv_set_pts_info(st, 32, 1, st->codecpar->sample_rate);
    } else {
        avpriv_set_pts_info(st, 32, 1, 90000);
    }
    s->buf_ptr = s->buf;
    switch(st->codecpar->codec_id) {
    case 136:
    case 135:
        s->buf_ptr = s->buf + 4;
        avpriv_set_pts_info(st, 32, 1, 90000);
        break;
    case 134:
    case 132:
        break;
    case 133:
        n = s->max_payload_size / TS_PACKET_SIZE;
        if (n < 1)
            n = 1;
        s->max_payload_size = n * TS_PACKET_SIZE;
        break;
    case 141:
        if (s1->strict_std_compliance > FF_COMPLIANCE_EXPERIMENTAL) {
            av_log(s, AV_LOG_ERROR,
                   "Packetizing VC-2 is experimental and does not use all values "
                   "of the specification "
                   "(even though most receivers may handle it just fine). "
                   "Please set -strict experimental in order to enable it.\n");
            ret = AVERROR_EXPERIMENTAL;
            goto fail;
        }
        break;
    case 140:
        if (s1->strict_std_compliance > FF_COMPLIANCE_EXPERIMENTAL) {
            av_log(s, AV_LOG_ERROR,
                   "Packetizing H.261 is experimental and produces incorrect "
                   "packetization for cases where GOBs don't fit into packets "
                   "(even though most receivers may handle it just fine). "
                   "Please set -f_strict experimental in order to enable it.\n");
            ret = AVERROR_EXPERIMENTAL;
            goto fail;
        }
        break;
    case 139:

        if (st->codecpar->extradata_size > 4 && st->codecpar->extradata[0] == 1) {
            s->nal_length_size = (st->codecpar->extradata[4] & 0x03) + 1;
        }
        break;
    case 138:




        if (st->codecpar->extradata_size > 21 && st->codecpar->extradata[0] == 1) {
            s->nal_length_size = (st->codecpar->extradata[21] & 0x03) + 1;
        }
        break;
    case 128:
        if (s1->strict_std_compliance > FF_COMPLIANCE_EXPERIMENTAL) {
            av_log(s, AV_LOG_ERROR,
                   "Packetizing VP9 is experimental and its specification is "
                   "still in draft state. "
                   "Please set -strict experimental in order to enable it.\n");
            ret = AVERROR_EXPERIMENTAL;
            goto fail;
        }
        break;
    case 129:
    case 130:
        s->max_frames_per_packet = 15;
        break;
    case 144:


        avpriv_set_pts_info(st, 32, 1, 8000);
        break;
    case 131:
        if (st->codecpar->channels > 2) {
            av_log(s1, AV_LOG_ERROR, "Multistream opus not supported in RTP\n");
            goto fail;
        }



        avpriv_set_pts_info(st, 32, 1, 48000);
        break;
    case 137:
        if (st->codecpar->block_align != 38 && st->codecpar->block_align != 50) {
            av_log(s1, AV_LOG_ERROR, "Incorrect iLBC block size specified\n");
            goto fail;
        }
        s->max_frames_per_packet = s->max_payload_size / st->codecpar->block_align;
        break;
    case 143:
    case 142:
        s->max_frames_per_packet = 50;
        if (st->codecpar->codec_id == 143)
            n = 31;
        else
            n = 61;

        if (1 + s->max_frames_per_packet + n > s->max_payload_size) {
            av_log(s1, AV_LOG_ERROR, "RTP max payload size too small for AMR\n");
            goto fail;
        }
        if (st->codecpar->channels != 1) {
            av_log(s1, AV_LOG_ERROR, "Only mono is supported\n");
            goto fail;
        }
        break;
    case 145:
        s->max_frames_per_packet = 50;
        break;
    default:
        break;
    }

    return 0;

fail:
    av_freep(&s->buf);
    return ret;
}
