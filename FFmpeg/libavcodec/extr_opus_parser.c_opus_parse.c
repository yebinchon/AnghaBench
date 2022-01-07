
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {scalar_t__ ts_framing; int pc; } ;
typedef int ParseContext ;
typedef TYPE_1__ OpusParseContext ;
typedef TYPE_2__ AVCodecParserContext ;
typedef int AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 scalar_t__ ff_combine_frame (int *,int,int const**,int*) ;
 int opus_find_frame_end (TYPE_2__*,int *,int const*,int,int*) ;

__attribute__((used)) static int opus_parse(AVCodecParserContext *ctx, AVCodecContext *avctx,
                       const uint8_t **poutbuf, int *poutbuf_size,
                       const uint8_t *buf, int buf_size)
{
    OpusParseContext *s = ctx->priv_data;
    ParseContext *pc = &s->pc;
    int next, header_len;

    next = opus_find_frame_end(ctx, avctx, buf, buf_size, &header_len);

    if (s->ts_framing && next != AVERROR_INVALIDDATA &&
        ff_combine_frame(pc, next, &buf, &buf_size) < 0) {
        *poutbuf = ((void*)0);
        *poutbuf_size = 0;
        return buf_size;
    }

    if (next == AVERROR_INVALIDDATA){
        *poutbuf = ((void*)0);
        *poutbuf_size = 0;
        return buf_size;
    }

    *poutbuf = buf + header_len;
    *poutbuf_size = buf_size - header_len;
    return next;
}
