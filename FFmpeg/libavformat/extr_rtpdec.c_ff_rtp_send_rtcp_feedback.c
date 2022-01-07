
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef scalar_t__ int64_t ;
typedef int URLContext ;
struct TYPE_6__ {scalar_t__ last_feedback_time; scalar_t__ ssrc; int dynamic_protocol_context; TYPE_1__* handler; } ;
struct TYPE_5__ {int (* need_keyframe ) (int ) ;} ;
typedef TYPE_2__ RTPDemuxContext ;
typedef int AVIOContext ;


 scalar_t__ MIN_FEEDBACK_INTERVAL ;
 int RTCP_PSFB ;
 int RTCP_RTPFB ;
 int RTP_VERSION ;
 int av_free (int *) ;
 scalar_t__ av_gettime_relative () ;
 int avio_close_dyn_buf (int *,int **) ;
 int avio_flush (int *) ;
 scalar_t__ avio_open_dyn_buf (int **) ;
 int avio_w8 (int *,int) ;
 int avio_wb16 (int *,int) ;
 int avio_wb32 (int *,scalar_t__) ;
 int ffurl_write (int *,int *,int) ;
 int find_missing_packets (TYPE_2__*,int*,int*) ;
 int stub1 (int ) ;

int ff_rtp_send_rtcp_feedback(RTPDemuxContext *s, URLContext *fd,
                              AVIOContext *avio)
{
    int len, need_keyframe, missing_packets;
    AVIOContext *pb;
    uint8_t *buf;
    int64_t now;
    uint16_t first_missing = 0, missing_mask = 0;

    if (!fd && !avio)
        return -1;

    need_keyframe = s->handler && s->handler->need_keyframe &&
                    s->handler->need_keyframe(s->dynamic_protocol_context);
    missing_packets = find_missing_packets(s, &first_missing, &missing_mask);

    if (!need_keyframe && !missing_packets)
        return 0;




    now = av_gettime_relative();
    if (s->last_feedback_time &&
        (now - s->last_feedback_time) < MIN_FEEDBACK_INTERVAL)
        return 0;
    s->last_feedback_time = now;

    if (!fd)
        pb = avio;
    else if (avio_open_dyn_buf(&pb) < 0)
        return -1;

    if (need_keyframe) {
        avio_w8(pb, (RTP_VERSION << 6) | 1);
        avio_w8(pb, RTCP_PSFB);
        avio_wb16(pb, 2);

        avio_wb32(pb, s->ssrc + 1);
        avio_wb32(pb, s->ssrc);
    }

    if (missing_packets) {
        avio_w8(pb, (RTP_VERSION << 6) | 1);
        avio_w8(pb, RTCP_RTPFB);
        avio_wb16(pb, 3);
        avio_wb32(pb, s->ssrc + 1);
        avio_wb32(pb, s->ssrc);

        avio_wb16(pb, first_missing);
        avio_wb16(pb, missing_mask);
    }

    avio_flush(pb);
    if (!fd)
        return 0;
    len = avio_close_dyn_buf(pb, &buf);
    if (len > 0 && buf) {
        ffurl_write(fd, buf, len);
        av_free(buf);
    }
    return 0;
}
