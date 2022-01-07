
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* priv_data; int * pb; } ;
struct TYPE_7__ {scalar_t__ pts; int size; int data; } ;
struct TYPE_6__ {scalar_t__ last_pts; scalar_t__ frame_cnt; int sum_delta_pts; } ;
typedef TYPE_1__ IVFEncContext ;
typedef TYPE_2__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int avio_wl32 (int *,int ) ;
 int avio_wl64 (int *,scalar_t__) ;
 int avio_write (int *,int ,int ) ;

__attribute__((used)) static int ivf_write_packet(AVFormatContext *s, AVPacket *pkt)
{
    AVIOContext *pb = s->pb;
    IVFEncContext *ctx = s->priv_data;

    avio_wl32(pb, pkt->size);
    avio_wl64(pb, pkt->pts);
    avio_write(pb, pkt->data, pkt->size);
    if (ctx->frame_cnt)
        ctx->sum_delta_pts += pkt->pts - ctx->last_pts;
    ctx->frame_cnt++;
    ctx->last_pts = pkt->pts;

    return 0;
}
