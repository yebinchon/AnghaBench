
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int pb; TYPE_1__* priv_data; } ;
struct TYPE_8__ {int flags; } ;
struct TYPE_7__ {int fsize; int chars_per_frame; } ;
typedef TYPE_1__ BinDemuxContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_PKT_FLAG_KEY ;
 int EIO ;
 scalar_t__ av_get_packet (int ,TYPE_2__*,int) ;
 scalar_t__ avio_feof (int ) ;

__attribute__((used)) static int read_packet(AVFormatContext *s,
                           AVPacket *pkt)
{
    BinDemuxContext *bin = s->priv_data;

    if (bin->fsize > 0) {
        if (av_get_packet(s->pb, pkt, bin->fsize) < 0)
            return AVERROR(EIO);
        bin->fsize = -1;
    } else if (!bin->fsize) {
        if (avio_feof(s->pb))
            return AVERROR(EIO);
        if (av_get_packet(s->pb, pkt, bin->chars_per_frame) < 0)
            return AVERROR(EIO);
    } else {
        return AVERROR(EIO);
    }

    pkt->flags |= AV_PKT_FLAG_KEY;
    return 0;
}
