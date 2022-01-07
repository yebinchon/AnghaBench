
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct AVFormatContext {int pb; TYPE_1__* priv_data; } ;
struct TYPE_7__ {int* data; int size; } ;
struct TYPE_6__ {int* out_buf; int out_bytes; int length_code; int use_preamble; int extra_bswap; int (* header_info ) (struct AVFormatContext*,TYPE_2__*) ;int pkt_offset; int data_type; int spdif_flags; int* buffer; int buffer_size; } ;
typedef TYPE_1__ IEC61937Context ;
typedef TYPE_2__ AVPacket ;


 int AVERROR (int ) ;
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int BURST_HEADER_SIZE ;
 int EINVAL ;
 int ENOMEM ;
 int FFALIGN (int,int) ;
 int SPDIF_FLAG_BIGENDIAN ;
 int SYNCWORD1 ;
 int SYNCWORD2 ;
 int av_fast_malloc (int**,int *,scalar_t__) ;
 int av_log (struct AVFormatContext*,int ,char*,...) ;
 int avio_write (int ,int*,int) ;
 int ff_spdif_bswap_buf16 (int *,int *,int) ;
 int ffio_fill (int ,int ,int) ;
 int spdif_put_16 (TYPE_1__*,int ,int) ;
 int stub1 (struct AVFormatContext*,TYPE_2__*) ;

__attribute__((used)) static int spdif_write_packet(struct AVFormatContext *s, AVPacket *pkt)
{
    IEC61937Context *ctx = s->priv_data;
    int ret, padding;

    ctx->out_buf = pkt->data;
    ctx->out_bytes = pkt->size;
    ctx->length_code = FFALIGN(pkt->size, 2) << 3;
    ctx->use_preamble = 1;
    ctx->extra_bswap = 0;

    ret = ctx->header_info(s, pkt);
    if (ret < 0)
        return ret;
    if (!ctx->pkt_offset)
        return 0;

    padding = (ctx->pkt_offset - ctx->use_preamble * BURST_HEADER_SIZE - ctx->out_bytes) & ~1;
    if (padding < 0) {
        av_log(s, AV_LOG_ERROR, "bitrate is too high\n");
        return AVERROR(EINVAL);
    }

    if (ctx->use_preamble) {
        spdif_put_16(ctx, s->pb, SYNCWORD1);
        spdif_put_16(ctx, s->pb, SYNCWORD2);
        spdif_put_16(ctx, s->pb, ctx->data_type);
        spdif_put_16(ctx, s->pb, ctx->length_code);
    }

    if (ctx->extra_bswap ^ (ctx->spdif_flags & SPDIF_FLAG_BIGENDIAN)) {
        avio_write(s->pb, ctx->out_buf, ctx->out_bytes & ~1);
    } else {
        av_fast_malloc(&ctx->buffer, &ctx->buffer_size, ctx->out_bytes + AV_INPUT_BUFFER_PADDING_SIZE);
        if (!ctx->buffer)
            return AVERROR(ENOMEM);
        ff_spdif_bswap_buf16((uint16_t *)ctx->buffer, (uint16_t *)ctx->out_buf, ctx->out_bytes >> 1);
        avio_write(s->pb, ctx->buffer, ctx->out_bytes & ~1);
    }


    if (ctx->out_bytes & 1)
        spdif_put_16(ctx, s->pb, ctx->out_buf[ctx->out_bytes - 1] << 8);

    ffio_fill(s->pb, 0, padding);

    av_log(s, AV_LOG_DEBUG, "type=%x len=%i pkt_offset=%i\n",
           ctx->data_type, ctx->out_bytes, ctx->pkt_offset);

    return 0;
}
