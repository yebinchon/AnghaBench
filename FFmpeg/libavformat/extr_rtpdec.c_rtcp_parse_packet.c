
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {scalar_t__ base_timestamp; scalar_t__ last_rtcp_timestamp; int rtcp_ts_offset; int last_rtcp_ntp_time; int first_rtcp_ntp_time; int last_rtcp_reception_time; int ic; } ;
typedef TYPE_1__ RTPDemuxContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_NOPTS_VALUE ;
 int AV_RB16 (unsigned char const*) ;
 scalar_t__ AV_RB32 (unsigned char const*) ;
 int AV_RB64 (unsigned char const*) ;
 int FFMIN (int,int) ;


 int av_gettime_relative () ;
 int av_log (int ,int ,char*) ;

__attribute__((used)) static int rtcp_parse_packet(RTPDemuxContext *s, const unsigned char *buf,
                             int len)
{
    int payload_len;
    while (len >= 4) {
        payload_len = FFMIN(len, (AV_RB16(buf + 2) + 1) * 4);

        switch (buf[1]) {
        case 128:
            if (payload_len < 20) {
                av_log(s->ic, AV_LOG_ERROR, "Invalid RTCP SR packet length\n");
                return AVERROR_INVALIDDATA;
            }

            s->last_rtcp_reception_time = av_gettime_relative();
            s->last_rtcp_ntp_time = AV_RB64(buf + 8);
            s->last_rtcp_timestamp = AV_RB32(buf + 16);
            if (s->first_rtcp_ntp_time == AV_NOPTS_VALUE) {
                s->first_rtcp_ntp_time = s->last_rtcp_ntp_time;
                if (!s->base_timestamp)
                    s->base_timestamp = s->last_rtcp_timestamp;
                s->rtcp_ts_offset = (int32_t)(s->last_rtcp_timestamp - s->base_timestamp);
            }

            break;
        case 129:
            return -129;
        }

        buf += payload_len;
        len -= payload_len;
    }
    return -1;
}
