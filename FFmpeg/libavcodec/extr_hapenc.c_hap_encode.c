
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {TYPE_2__* priv_data; } ;
struct TYPE_16__ {int size; int flags; int data; } ;
struct TYPE_15__ {int tex_size; int max_snappy; int chunk_count; scalar_t__ opt_compressor; int tex_buf; TYPE_1__* chunks; } ;
struct TYPE_14__ {scalar_t__ compressor; } ;
typedef TYPE_2__ HapContext ;
typedef TYPE_3__ AVPacket ;
typedef int AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int AV_PKT_FLAG_KEY ;
 int FFMAX (int,int) ;
 scalar_t__ HAP_COMP_NONE ;
 int av_shrink_packet (TYPE_3__*,int) ;
 int compress_texture (TYPE_4__*,int ,int,int const*) ;
 int ff_alloc_packet2 (TYPE_4__*,TYPE_3__*,int,int) ;
 int hap_compress_frame (TYPE_4__*,int ) ;
 int hap_header_length (TYPE_2__*) ;
 int hap_write_frame_header (TYPE_2__*,int ,int) ;

__attribute__((used)) static int hap_encode(AVCodecContext *avctx, AVPacket *pkt,
                      const AVFrame *frame, int *got_packet)
{
    HapContext *ctx = avctx->priv_data;
    int header_length = hap_header_length(ctx);
    int final_data_size, ret;
    int pktsize = FFMAX(ctx->tex_size, ctx->max_snappy * ctx->chunk_count) + header_length;


    ret = ff_alloc_packet2(avctx, pkt, pktsize, header_length);
    if (ret < 0)
        return ret;

    if (ctx->opt_compressor == HAP_COMP_NONE) {

        ret = compress_texture(avctx, pkt->data + header_length, pkt->size - header_length, frame);
        if (ret < 0)
            return ret;

        ctx->chunks[0].compressor = HAP_COMP_NONE;
        final_data_size = ctx->tex_size;
    } else {

        ret = compress_texture(avctx, ctx->tex_buf, ctx->tex_size, frame);
        if (ret < 0)
            return ret;


        final_data_size = hap_compress_frame(avctx, pkt->data + header_length);
        if (final_data_size < 0)
            return final_data_size;
    }


    hap_write_frame_header(ctx, pkt->data, final_data_size + header_length);

    av_shrink_packet(pkt, final_data_size + header_length);
    pkt->flags |= AV_PKT_FLAG_KEY;
    *got_packet = 1;
    return 0;
}
