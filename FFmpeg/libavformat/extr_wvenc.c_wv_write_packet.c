
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int samples; } ;
typedef TYPE_1__ WvMuxContext ;
struct TYPE_10__ {scalar_t__ samples; } ;
typedef TYPE_2__ WvHeader ;
struct TYPE_12__ {int pb; TYPE_1__* priv_data; } ;
struct TYPE_11__ {scalar_t__ size; int data; } ;
typedef TYPE_3__ AVPacket ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 scalar_t__ WV_HEADER_SIZE ;
 int av_log (TYPE_4__*,int ,char*) ;
 int avio_write (int ,int ,scalar_t__) ;
 int ff_wv_parse_header (TYPE_2__*,int ) ;

__attribute__((used)) static int wv_write_packet(AVFormatContext *ctx, AVPacket *pkt)
{
    WvMuxContext *s = ctx->priv_data;
    WvHeader header;
    int ret;

    if (pkt->size < WV_HEADER_SIZE ||
        (ret = ff_wv_parse_header(&header, pkt->data)) < 0) {
        av_log(ctx, AV_LOG_ERROR, "Invalid WavPack packet.\n");
        return AVERROR(EINVAL);
    }
    s->samples += header.samples;

    avio_write(ctx->pb, pkt->data, pkt->size);

    return 0;
}
