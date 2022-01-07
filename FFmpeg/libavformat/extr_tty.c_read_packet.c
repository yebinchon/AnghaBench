
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_7__ {int chars_per_frame; scalar_t__ fsize; } ;
typedef TYPE_1__ TtyDemuxContext ;
struct TYPE_9__ {int pb; TYPE_1__* priv_data; } ;
struct TYPE_8__ {int size; int flags; } ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR_EOF ;
 int AV_PKT_FLAG_KEY ;
 int av_get_packet (int ,TYPE_2__*,int) ;
 scalar_t__ avio_feof (int ) ;
 scalar_t__ avio_tell (int ) ;

__attribute__((used)) static int read_packet(AVFormatContext *avctx, AVPacket *pkt)
{
    TtyDemuxContext *s = avctx->priv_data;
    int n;

    if (avio_feof(avctx->pb))
        return AVERROR_EOF;

    n = s->chars_per_frame;
    if (s->fsize) {

        uint64_t p = avio_tell(avctx->pb);
        if (p == s->fsize)
            return AVERROR_EOF;
        if (p + s->chars_per_frame > s->fsize)
            n = s->fsize - p;
    }

    pkt->size = av_get_packet(avctx->pb, pkt, n);
    if (pkt->size < 0)
        return pkt->size;
    pkt->flags |= AV_PKT_FLAG_KEY;
    return 0;
}
