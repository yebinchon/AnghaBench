
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_5__ ;
typedef struct TYPE_32__ TYPE_4__ ;
typedef struct TYPE_31__ TYPE_3__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_33__ {TYPE_3__** streams; TYPE_2__* priv_data; } ;
struct TYPE_32__ {int size; int stream_index; int data; scalar_t__ pts; } ;
struct TYPE_31__ {TYPE_1__* codecpar; } ;
struct TYPE_30__ {int octet_count; int last_octet_count; int last_rtcp_ntp_time; int flags; int max_payload_size; scalar_t__ base_timestamp; scalar_t__ cur_timestamp; scalar_t__ first_packet; } ;
struct TYPE_29__ {int codec_id; int channels; int bits_per_coded_sample; int field_order; } ;
typedef TYPE_2__ RTPMuxContext ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVPacket ;
typedef TYPE_5__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_FIELD_PROGRESSIVE ;
 int AV_LOG_ERROR ;
 int AV_LOG_TRACE ;
 int AV_PKT_DATA_H263_MB_INFO ;
 int EINVAL ;
 int FF_RTP_FLAG_MP4A_LATM ;
 int FF_RTP_FLAG_RFC2190 ;
 int FF_RTP_FLAG_SKIP_RTCP ;
 int RTCP_SR_SIZE ;
 int RTCP_TX_RATIO_DEN ;
 int RTCP_TX_RATIO_NUM ;
 int av_log (TYPE_5__*,int ,char*,int,int) ;
 int * av_packet_get_side_data (TYPE_4__*,int ,int*) ;
 int ff_ntp_time () ;
 int ff_rtp_send_aac (TYPE_5__*,int ,int) ;
 int ff_rtp_send_amr (TYPE_5__*,int ,int) ;
 int ff_rtp_send_h261 (TYPE_5__*,int ,int) ;
 int ff_rtp_send_h263 (TYPE_5__*,int ,int) ;
 int ff_rtp_send_h263_rfc2190 (TYPE_5__*,int ,int,int const*,int) ;
 int ff_rtp_send_h264_hevc (TYPE_5__*,int ,int) ;
 int ff_rtp_send_jpeg (TYPE_5__*,int ,int) ;
 int ff_rtp_send_latm (TYPE_5__*,int ,int) ;
 int ff_rtp_send_mpegvideo (TYPE_5__*,int ,int) ;
 int ff_rtp_send_vc2hq (TYPE_5__*,int ,int,int) ;
 int ff_rtp_send_vp8 (TYPE_5__*,int ,int) ;
 int ff_rtp_send_vp9 (TYPE_5__*,int ,int) ;
 int ff_rtp_send_xiph (TYPE_5__*,int ,int) ;
 int rtcp_send_sr (TYPE_5__*,int,int ) ;
 int rtp_send_ilbc (TYPE_5__*,int ,int) ;
 int rtp_send_mpegaudio (TYPE_5__*,int ,int) ;
 int rtp_send_mpegts_raw (TYPE_5__*,int ,int) ;
 int rtp_send_raw (TYPE_5__*,int ,int) ;
 int rtp_send_samples (TYPE_5__*,int ,int,int) ;

__attribute__((used)) static int rtp_write_packet(AVFormatContext *s1, AVPacket *pkt)
{
    RTPMuxContext *s = s1->priv_data;
    AVStream *st = s1->streams[0];
    int rtcp_bytes;
    int size= pkt->size;

    av_log(s1, AV_LOG_TRACE, "%d: write len=%d\n", pkt->stream_index, size);

    rtcp_bytes = ((s->octet_count - s->last_octet_count) * RTCP_TX_RATIO_NUM) /
        RTCP_TX_RATIO_DEN;
    if ((s->first_packet || ((rtcp_bytes >= RTCP_SR_SIZE) &&
                            (ff_ntp_time() - s->last_rtcp_ntp_time > 5000000))) &&
        !(s->flags & FF_RTP_FLAG_SKIP_RTCP)) {
        rtcp_send_sr(s1, ff_ntp_time(), 0);
        s->last_octet_count = s->octet_count;
        s->first_packet = 0;
    }
    s->cur_timestamp = s->base_timestamp + pkt->pts;

    switch(st->codecpar->codec_id) {
    case 139:
    case 140:
    case 132:
    case 135:
        return rtp_send_samples(s1, pkt->data, size, 8 * st->codecpar->channels);
    case 134:
    case 133:
    case 138:
    case 137:
        return rtp_send_samples(s1, pkt->data, size, 16 * st->codecpar->channels);
    case 136:
        return rtp_send_samples(s1, pkt->data, size, 24 * st->codecpar->channels);
    case 159:




        return rtp_send_samples(s1, pkt->data, size, 8 * st->codecpar->channels);
    case 158:
    case 157:
        return rtp_send_samples(s1, pkt->data, size,
                                st->codecpar->bits_per_coded_sample * st->codecpar->channels);
    case 146:
    case 145:
        rtp_send_mpegaudio(s1, pkt->data, size);
        break;
    case 144:
    case 142:
        ff_rtp_send_mpegvideo(s1, pkt->data, size);
        break;
    case 160:
        if (s->flags & FF_RTP_FLAG_MP4A_LATM)
            ff_rtp_send_latm(s1, pkt->data, size);
        else
            ff_rtp_send_aac(s1, pkt->data, size);
        break;
    case 156:
    case 155:
        ff_rtp_send_amr(s1, pkt->data, size);
        break;
    case 143:
        rtp_send_mpegts_raw(s1, pkt->data, size);
        break;
    case 154:
        ff_rtp_send_vc2hq(s1, pkt->data, size, st->codecpar->field_order != AV_FIELD_PROGRESSIVE ? 1 : 0);
        break;
    case 150:
        ff_rtp_send_h264_hevc(s1, pkt->data, size);
        break;
    case 153:
        ff_rtp_send_h261(s1, pkt->data, size);
        break;
    case 152:
        if (s->flags & FF_RTP_FLAG_RFC2190) {
            int mb_info_size = 0;
            const uint8_t *mb_info =
                av_packet_get_side_data(pkt, AV_PKT_DATA_H263_MB_INFO,
                                        &mb_info_size);
            ff_rtp_send_h263_rfc2190(s1, pkt->data, size, mb_info, mb_info_size);
            break;
        }

    case 151:
        ff_rtp_send_h263(s1, pkt->data, size);
        break;
    case 149:
        ff_rtp_send_h264_hevc(s1, pkt->data, size);
        break;
    case 130:
    case 131:
        ff_rtp_send_xiph(s1, pkt->data, size);
        break;
    case 129:
        ff_rtp_send_vp8(s1, pkt->data, size);
        break;
    case 128:
        ff_rtp_send_vp9(s1, pkt->data, size);
        break;
    case 148:
        rtp_send_ilbc(s1, pkt->data, size);
        break;
    case 147:
        ff_rtp_send_jpeg(s1, pkt->data, size);
        break;
    case 141:
        if (size > s->max_payload_size) {
            av_log(s1, AV_LOG_ERROR,
                   "Packet size %d too large for max RTP payload size %d\n",
                   size, s->max_payload_size);
            return AVERROR(EINVAL);
        }

    default:

        rtp_send_raw(s1, pkt->data, size);
        break;
    }
    return 0;
}
