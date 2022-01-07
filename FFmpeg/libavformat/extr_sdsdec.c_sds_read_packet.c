
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int64_t ;
struct TYPE_9__ {int * pb; TYPE_1__* priv_data; } ;
struct TYPE_8__ {int pos; scalar_t__ stream_index; int flags; scalar_t__ data; } ;
struct TYPE_7__ {int data; int (* read_block ) (int ,int *) ;int size; } ;
typedef TYPE_1__ SDSContext ;
typedef TYPE_2__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR_EOF ;
 int AVERROR_INVALIDDATA ;
 int AV_PKT_FLAG_CORRUPT ;
 int av_new_packet (TYPE_2__*,int ) ;
 scalar_t__ avio_feof (int *) ;
 int avio_r8 (int *) ;
 int avio_rb16 (int *) ;
 int avio_read (int *,int ,int) ;
 int avio_skip (int *,int) ;
 int avio_tell (int *) ;
 int stub1 (int ,int *) ;

__attribute__((used)) static int sds_read_packet(AVFormatContext *ctx, AVPacket *pkt)
{
    SDSContext *s = ctx->priv_data;
    AVIOContext *pb = ctx->pb;
    int64_t pos;
    int ret;

    if (avio_feof(pb))
        return AVERROR_EOF;

    pos = avio_tell(pb);
    if (avio_rb16(pb) != 0xF07E)
        return AVERROR_INVALIDDATA;
    avio_skip(pb, 3);

    ret = av_new_packet(pkt, s->size);
    if (ret < 0)
        return ret;

    ret = avio_read(pb, s->data, 120);

    s->read_block(s->data, (uint32_t *)pkt->data);

    avio_skip(pb, 1);
    if (avio_r8(pb) != 0xF7)
        return AVERROR_INVALIDDATA;

    pkt->flags &= ~AV_PKT_FLAG_CORRUPT;
    pkt->stream_index = 0;
    pkt->pos = pos;

    return ret;
}
