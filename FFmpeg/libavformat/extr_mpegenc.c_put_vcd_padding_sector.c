
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pb; TYPE_1__* priv_data; } ;
struct TYPE_4__ {int packet_size; int vcd_padding_bytes_written; int packet_number; } ;
typedef TYPE_1__ MpegMuxContext ;
typedef TYPE_2__ AVFormatContext ;


 int avio_flush (int ) ;
 int avio_w8 (int ,int ) ;

__attribute__((used)) static void put_vcd_padding_sector(AVFormatContext *ctx)
{






    MpegMuxContext *s = ctx->priv_data;
    int i;

    for (i = 0; i < s->packet_size; i++)
        avio_w8(ctx->pb, 0);

    s->vcd_padding_bytes_written += s->packet_size;

    avio_flush(ctx->pb);





    s->packet_number++;
}
