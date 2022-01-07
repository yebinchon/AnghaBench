
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int pb; TYPE_1__* priv_data; } ;
struct TYPE_5__ {int payload_type; int seq; int octet_count; int packet_count; int ssrc; int timestamp; } ;
typedef TYPE_1__ RTPMuxContext ;
typedef TYPE_2__ AVFormatContext ;


 int AV_LOG_TRACE ;
 int RTP_VERSION ;
 int av_log (TYPE_2__*,int ,char*,int) ;
 int avio_flush (int ) ;
 int avio_w8 (int ,int) ;
 int avio_wb16 (int ,int) ;
 int avio_wb32 (int ,int ) ;
 int avio_write (int ,int const*,int) ;

void ff_rtp_send_data(AVFormatContext *s1, const uint8_t *buf1, int len, int m)
{
    RTPMuxContext *s = s1->priv_data;

    av_log(s1, AV_LOG_TRACE, "rtp_send_data size=%d\n", len);


    avio_w8(s1->pb, RTP_VERSION << 6);
    avio_w8(s1->pb, (s->payload_type & 0x7f) | ((m & 0x01) << 7));
    avio_wb16(s1->pb, s->seq);
    avio_wb32(s1->pb, s->timestamp);
    avio_wb32(s1->pb, s->ssrc);

    avio_write(s1->pb, buf1, len);
    avio_flush(s1->pb);

    s->seq = (s->seq + 1) & 0xffff;
    s->octet_count += len;
    s->packet_count++;
}
