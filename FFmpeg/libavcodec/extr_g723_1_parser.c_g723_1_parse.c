
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int channels; } ;
struct TYPE_7__ {int duration; TYPE_1__* priv_data; } ;
struct TYPE_6__ {int pc; } ;
typedef int ParseContext ;
typedef TYPE_1__ G723_1ParseContext ;
typedef TYPE_2__ AVCodecParserContext ;
typedef TYPE_3__ AVCodecContext ;


 int END_NOT_FOUND ;
 int FFMAX (int,int ) ;
 scalar_t__ ff_combine_frame (int *,int,int const**,int*) ;
 int* frame_size ;

__attribute__((used)) static int g723_1_parse(AVCodecParserContext *s1, AVCodecContext *avctx,
                        const uint8_t **poutbuf, int *poutbuf_size,
                        const uint8_t *buf, int buf_size)
{
    G723_1ParseContext *s = s1->priv_data;
    ParseContext *pc = &s->pc;
    int next = END_NOT_FOUND;

    if (buf_size > 0)
        next = frame_size[buf[0] & 3] * FFMAX(1, avctx->channels);

    if (ff_combine_frame(pc, next, &buf, &buf_size) < 0 || !buf_size) {
        *poutbuf = ((void*)0);
        *poutbuf_size = 0;
        return buf_size;
    }

    s1->duration = 240;

    *poutbuf = buf;
    *poutbuf_size = buf_size;
    return next;
}
