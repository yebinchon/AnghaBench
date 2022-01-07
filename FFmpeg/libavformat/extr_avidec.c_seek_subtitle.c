
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_6__ {int sub_pkt; int sub_ctx; } ;
struct TYPE_5__ {int time_base; TYPE_2__* priv_data; } ;
typedef TYPE_1__ AVStream ;
typedef TYPE_2__ AVIStream ;


 int INT64_MAX ;
 int INT64_MIN ;
 int av_packet_unref (int *) ;
 int av_rescale_q (int ,int ,int ) ;
 scalar_t__ avformat_seek_file (int ,int ,int ,int ,int ,int ) ;
 int ff_read_packet (int ,int *) ;

__attribute__((used)) static void seek_subtitle(AVStream *st, AVStream *st2, int64_t timestamp)
{
    AVIStream *ast2 = st2->priv_data;
    int64_t ts2 = av_rescale_q(timestamp, st->time_base, st2->time_base);
    av_packet_unref(&ast2->sub_pkt);
    if (avformat_seek_file(ast2->sub_ctx, 0, INT64_MIN, ts2, ts2, 0) >= 0 ||
        avformat_seek_file(ast2->sub_ctx, 0, ts2, ts2, INT64_MAX, 0) >= 0)
        ff_read_packet(ast2->sub_ctx, &ast2->sub_pkt);
}
