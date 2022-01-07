
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_11__ {TYPE_2__** streams; int pb; } ;
struct TYPE_10__ {int duration; int pts; int pos; scalar_t__ stream_index; int flags; } ;
struct TYPE_9__ {TYPE_1__* codecpar; } ;
struct TYPE_8__ {scalar_t__ codec_id; } ;
typedef TYPE_3__ AVPacket ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR_EOF ;
 int AVERROR_INVALIDDATA ;
 scalar_t__ AV_CODEC_ID_ATRAC3AL ;
 int AV_PKT_FLAG_CORRUPT ;
 unsigned int MKBETAG (int ,char,char,char) ;
 int av_get_packet (int ,TYPE_3__*,int) ;
 scalar_t__ avio_feof (int ) ;
 int avio_rb16 (int ) ;
 unsigned int avio_rb24 (int ) ;
 int avio_rb32 (int ) ;
 int avio_skip (int ,int) ;
 int avio_tell (int ) ;

__attribute__((used)) static int aal_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    int64_t pos = avio_tell(s->pb);
    int ret, pts;
    int packet_size;
    unsigned tag;

    if (avio_feof(s->pb))
        return AVERROR_EOF;

    tag = avio_rb24(s->pb);
    if (tag == 0)
        return AVERROR_EOF;
    else if (tag != MKBETAG(0,'B','L','K'))
        return AVERROR_INVALIDDATA;

    avio_skip(s->pb, 1);
    packet_size = avio_rb16(s->pb);
    avio_skip(s->pb, 2);
    pts = avio_rb32(s->pb);
    avio_skip(s->pb, 12);
    ret = av_get_packet(s->pb, pkt, packet_size);
    if (ret < packet_size)
        pkt->flags |= AV_PKT_FLAG_CORRUPT;

    if (ret < 0)
        return ret;
    if (!ret)
        return AVERROR_EOF;

    pkt->stream_index = 0;
    pkt->pos = pos;
    if (s->streams[0]->codecpar->codec_id == AV_CODEC_ID_ATRAC3AL) {
        pkt->duration = 1024;
        pkt->pts = pts * 1024LL;
    } else {
        pkt->duration = 2048;
        pkt->pts = pts * 2048LL;
    }

    return ret;
}
