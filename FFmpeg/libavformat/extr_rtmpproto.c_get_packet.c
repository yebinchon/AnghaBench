
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {TYPE_3__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_21__ {scalar_t__ state; scalar_t__ bytes_read; scalar_t__ last_bytes_read; scalar_t__ receive_report_size; int is_input; scalar_t__ do_reconnect; scalar_t__ last_timestamp; int * nb_prev_pkt; int * prev_pkt; int in_chunk_size; int stream; } ;
struct TYPE_20__ {scalar_t__ type; int size; scalar_t__ timestamp; int member_0; } ;
typedef TYPE_2__ RTMPPacket ;
typedef TYPE_3__ RTMPContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AV_LOG_DEBUG ;
 int EAGAIN ;
 int EIO ;
 scalar_t__ RTMP_PT_AUDIO ;
 scalar_t__ RTMP_PT_METADATA ;
 scalar_t__ RTMP_PT_NOTIFY ;
 scalar_t__ RTMP_PT_VIDEO ;
 scalar_t__ STATE_PLAYING ;
 scalar_t__ STATE_PUBLISHING ;
 scalar_t__ STATE_RECEIVING ;
 scalar_t__ STATE_SEEKING ;
 scalar_t__ STATE_SENDING ;
 scalar_t__ STATE_STOPPED ;
 int append_flv_data (TYPE_3__*,TYPE_2__*,int ) ;
 int av_log (TYPE_1__*,int ,char*) ;
 int ff_rtmp_packet_destroy (TYPE_2__*) ;
 int ff_rtmp_packet_read (int ,TYPE_2__*,int ,int *,int *) ;
 int gen_bytes_read (TYPE_1__*,TYPE_3__*,scalar_t__) ;
 int handle_metadata (TYPE_3__*,TYPE_2__*) ;
 int handle_notify (TYPE_1__*,TYPE_2__*) ;
 int rtmp_parse_result (TYPE_1__*,TYPE_3__*,TYPE_2__*) ;

__attribute__((used)) static int get_packet(URLContext *s, int for_header)
{
    RTMPContext *rt = s->priv_data;
    int ret;

    if (rt->state == STATE_STOPPED)
        return AVERROR_EOF;

    for (;;) {
        RTMPPacket rpkt = { 0 };
        if ((ret = ff_rtmp_packet_read(rt->stream, &rpkt,
                                       rt->in_chunk_size, &rt->prev_pkt[0],
                                       &rt->nb_prev_pkt[0])) <= 0) {
            if (ret == 0) {
                return AVERROR(EAGAIN);
            } else {
                return AVERROR(EIO);
            }
        }


        rt->last_timestamp = rpkt.timestamp;

        rt->bytes_read += ret;
        if (rt->bytes_read - rt->last_bytes_read > rt->receive_report_size) {
            av_log(s, AV_LOG_DEBUG, "Sending bytes read report\n");
            if ((ret = gen_bytes_read(s, rt, rpkt.timestamp + 1)) < 0) {
                ff_rtmp_packet_destroy(&rpkt);
                return ret;
            }
            rt->last_bytes_read = rt->bytes_read;
        }

        ret = rtmp_parse_result(s, rt, &rpkt);




        if (rt->state == STATE_SEEKING) {
            ff_rtmp_packet_destroy(&rpkt);


            continue;
        }

        if (ret < 0) {
            ff_rtmp_packet_destroy(&rpkt);
            return ret;
        }
        if (rt->do_reconnect && for_header) {
            ff_rtmp_packet_destroy(&rpkt);
            return 0;
        }
        if (rt->state == STATE_STOPPED) {
            ff_rtmp_packet_destroy(&rpkt);
            return AVERROR_EOF;
        }
        if (for_header && (rt->state == STATE_PLAYING ||
                           rt->state == STATE_PUBLISHING ||
                           rt->state == STATE_SENDING ||
                           rt->state == STATE_RECEIVING)) {
            ff_rtmp_packet_destroy(&rpkt);
            return 0;
        }
        if (!rpkt.size || !rt->is_input) {
            ff_rtmp_packet_destroy(&rpkt);
            continue;
        }
        if (rpkt.type == RTMP_PT_VIDEO || rpkt.type == RTMP_PT_AUDIO) {
            ret = append_flv_data(rt, &rpkt, 0);
            ff_rtmp_packet_destroy(&rpkt);
            return ret;
        } else if (rpkt.type == RTMP_PT_NOTIFY) {
            ret = handle_notify(s, &rpkt);
            ff_rtmp_packet_destroy(&rpkt);
            return ret;
        } else if (rpkt.type == RTMP_PT_METADATA) {
            ret = handle_metadata(rt, &rpkt);
            ff_rtmp_packet_destroy(&rpkt);
            return ret;
        }
        ff_rtmp_packet_destroy(&rpkt);
    }
}
