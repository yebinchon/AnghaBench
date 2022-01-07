
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int int64_t ;
typedef int int16_t ;
struct TYPE_12__ {int time_base; } ;
struct TYPE_11__ {scalar_t__ prev_ret; scalar_t__ seq; int queue_size; int queue_len; int ic; int queue; int statistics; TYPE_3__* st; int dynamic_protocol_context; TYPE_1__* handler; } ;
struct TYPE_10__ {int (* parse_packet ) (int ,int ,TYPE_3__*,int *,int *,int *,int ,int ,int) ;} ;
typedef TYPE_2__ RTPDemuxContext ;
typedef int AVPacket ;


 int AV_LOG_WARNING ;
 int AV_RB16 (int*) ;
 int AV_RB32 (int*) ;
 int AV_TIME_BASE_Q ;
 int RTP_NOTS_VALUE ;
 scalar_t__ RTP_PT_IS_RTCP (int) ;
 int RTP_VERSION ;
 int av_gettime_relative () ;
 int av_log (int ,int ,char*) ;
 int av_rescale_q (int ,int ,int ) ;
 int enqueue_packet (TYPE_2__*,int*,int) ;
 int finalize_packet (TYPE_2__*,int *,int ) ;
 int rtcp_parse_packet (TYPE_2__*,int*,int) ;
 int rtcp_update_jitter (int *,int ,int ) ;
 int rtp_parse_packet_internal (TYPE_2__*,int *,int*,int) ;
 int rtp_parse_queued_packet (TYPE_2__*,int *) ;
 int stub1 (int ,int ,TYPE_3__*,int *,int *,int *,int ,int ,int) ;

__attribute__((used)) static int rtp_parse_one_packet(RTPDemuxContext *s, AVPacket *pkt,
                                uint8_t **bufptr, int len)
{
    uint8_t *buf = bufptr ? *bufptr : ((void*)0);
    int flags = 0;
    uint32_t timestamp;
    int rv = 0;

    if (!buf) {



        if (s->prev_ret <= 0)
            return rtp_parse_queued_packet(s, pkt);

        if (s->handler && s->handler->parse_packet) {


            timestamp = RTP_NOTS_VALUE;
            rv = s->handler->parse_packet(s->ic, s->dynamic_protocol_context,
                                                 s->st, pkt, &timestamp, ((void*)0), 0, 0,
                                                 flags);
            finalize_packet(s, pkt, timestamp);
            return rv;
        }
    }

    if (len < 12)
        return -1;

    if ((buf[0] & 0xc0) != (RTP_VERSION << 6))
        return -1;
    if (RTP_PT_IS_RTCP(buf[1])) {
        return rtcp_parse_packet(s, buf, len);
    }

    if (s->st) {
        int64_t received = av_gettime_relative();
        uint32_t arrival_ts = av_rescale_q(received, AV_TIME_BASE_Q,
                                           s->st->time_base);
        timestamp = AV_RB32(buf + 4);


        rtcp_update_jitter(&s->statistics, timestamp, arrival_ts);
    }

    if ((s->seq == 0 && !s->queue) || s->queue_size <= 1) {

        return rtp_parse_packet_internal(s, pkt, buf, len);
    } else {
        uint16_t seq = AV_RB16(buf + 2);
        int16_t diff = seq - s->seq;
        if (diff < 0) {

            av_log(s->ic, AV_LOG_WARNING,
                   "RTP: dropping old packet received too late\n");
            return -1;
        } else if (diff <= 1) {

            rv = rtp_parse_packet_internal(s, pkt, buf, len);
            return rv;
        } else {

            rv = enqueue_packet(s, buf, len);
            if (rv < 0)
                return rv;
            *bufptr = ((void*)0);


            if (s->queue_len >= s->queue_size) {
                av_log(s->ic, AV_LOG_WARNING, "jitter buffer full\n");
                return rtp_parse_queued_packet(s, pkt);
            }
            return -1;
        }
    }
}
