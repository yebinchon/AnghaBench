
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_11__ {TYPE_2__** streams; int * pb; } ;
struct TYPE_10__ {int pos; int size; int flags; int pts; } ;
struct TYPE_8__ {int den; } ;
struct TYPE_9__ {TYPE_1__ time_base; } ;
typedef TYPE_3__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_PKT_FLAG_KEY ;
 int EIO ;
 scalar_t__ av_get_packet (int *,TYPE_3__*,int) ;
 scalar_t__ avio_feof (int *) ;
 int avio_r8 (int *) ;
 int avio_rl24 (int *) ;
 int avio_rl32 (int *) ;

__attribute__((used)) static int vc1t_read_packet(AVFormatContext *s,
                           AVPacket *pkt)
{
    AVIOContext *pb = s->pb;
    int frame_size;
    int keyframe = 0;
    uint32_t pts;

    if(avio_feof(pb))
        return AVERROR(EIO);

    frame_size = avio_rl24(pb);
    if(avio_r8(pb) & 0x80)
        keyframe = 1;
    pts = avio_rl32(pb);
    if(av_get_packet(pb, pkt, frame_size) < 0)
        return AVERROR(EIO);
    if(s->streams[0]->time_base.den == 1000)
        pkt->pts = pts;
    pkt->flags |= keyframe ? AV_PKT_FLAG_KEY : 0;
    pkt->pos -= 8;

    return pkt->size;
}
