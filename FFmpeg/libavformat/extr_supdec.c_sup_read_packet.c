
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* int64_t ;
struct TYPE_8__ {int pb; } ;
struct TYPE_7__ {int size; scalar_t__ data; void* dts; void* pts; void* pos; int flags; scalar_t__ stream_index; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR_EOF ;
 int AVERROR_INVALIDDATA ;
 void* AV_NOPTS_VALUE ;
 int AV_PKT_FLAG_KEY ;
 size_t AV_RB16 (scalar_t__) ;
 scalar_t__ SUP_PGS_MAGIC ;
 int av_append_packet (int ,TYPE_1__*,size_t) ;
 int av_get_packet (int ,TYPE_1__*,int) ;
 scalar_t__ avio_feof (int ) ;
 scalar_t__ avio_rb16 (int ) ;
 void* avio_rb32 (int ) ;
 void* avio_tell (int ) ;

__attribute__((used)) static int sup_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    int64_t pts, dts, pos;
    int ret;

    pos = avio_tell(s->pb);

    if (avio_rb16(s->pb) != SUP_PGS_MAGIC)
        return avio_feof(s->pb) ? AVERROR_EOF : AVERROR_INVALIDDATA;

    pts = avio_rb32(s->pb);
    dts = avio_rb32(s->pb);

    if ((ret = av_get_packet(s->pb, pkt, 3)) < 0)
        return ret;

    pkt->stream_index = 0;
    pkt->flags |= AV_PKT_FLAG_KEY;
    pkt->pos = pos;
    pkt->pts = pts;

    pkt->dts = dts ? dts : AV_NOPTS_VALUE;

    if (pkt->size >= 3) {

        size_t len = AV_RB16(pkt->data + 1);

        if ((ret = av_append_packet(s->pb, pkt, len)) < 0)
            return ret;
    }

    return 0;
}
