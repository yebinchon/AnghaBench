
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int duration; TYPE_1__* priv_data; } ;
struct TYPE_5__ {int delay; int pc; } ;
typedef TYPE_1__ GIFParseContext ;
typedef TYPE_2__ AVCodecParserContext ;
typedef int AVCodecContext ;


 scalar_t__ ff_combine_frame (int *,int,int const**,int*) ;
 int gif_find_frame_end (TYPE_1__*,int const*,int,int *) ;

__attribute__((used)) static int gif_parse(AVCodecParserContext *s, AVCodecContext *avctx,
                     const uint8_t **poutbuf, int *poutbuf_size,
                     const uint8_t *buf, int buf_size)
{
    GIFParseContext *g = s->priv_data;
    int next;

    next = gif_find_frame_end(g, buf, buf_size, avctx);
    if (ff_combine_frame(&g->pc, next, &buf, &buf_size) < 0) {
        *poutbuf = ((void*)0);
        *poutbuf_size = 0;
        return buf_size;
    }

    s->duration = g->delay;

    *poutbuf = buf;
    *poutbuf_size = buf_size;
    return next;
}
