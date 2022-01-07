
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int pb; } ;
struct TYPE_9__ {int pts; int pos; scalar_t__ stream_index; int flags; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVFormatContext ;


 int AV_LOG_ERROR ;
 int AV_PKT_FLAG_CORRUPT ;
 int av_append_packet (int ,TYPE_1__*,int) ;
 int av_get_packet (int ,TYPE_1__*,int) ;
 int av_log (TYPE_2__*,int ,char*,...) ;
 int av_packet_unref (TYPE_1__*) ;
 int avio_rb16 (int ) ;
 int avio_rb32 (int ) ;
 int avio_skip (int ,int) ;

__attribute__((used)) static int read_packet(AVFormatContext *s, AVPacket *pkt)
{
    int ret, size, pts, type, flags;
    int first_pkt = 0;
    int frame_complete = 0;

    while (!frame_complete) {

        type = avio_rb16(s->pb);
        size = avio_rb16(s->pb);
        flags = avio_rb16(s->pb);
                avio_rb16(s->pb);
        pts = avio_rb32(s->pb);
                avio_rb32(s->pb);

        frame_complete = flags & 0x80;

        size -= 12;
        if (size < 1)
            return -1;

        if (type == 258) {
            avio_skip(s->pb, size);
            frame_complete = 0;
            continue;
        }

        if (!first_pkt) {
            ret = av_get_packet(s->pb, pkt, size);
            if (ret < 0)
                return ret;
            first_pkt = 1;
            pkt->pts = pts;
            pkt->pos -= 16;
        } else {
            ret = av_append_packet(s->pb, pkt, size);
            if (ret < 0) {
                av_log(s, AV_LOG_ERROR, "failed to grow packet\n");
                av_packet_unref(pkt);
                return ret;
            }
        }
        if (ret < size) {
            av_log(s, AV_LOG_ERROR, "Truncated packet! Read %d of %d bytes\n",
                   ret, size);
            pkt->flags |= AV_PKT_FLAG_CORRUPT;
            break;
        }
    }
    pkt->stream_index = 0;

    return 0;
}
