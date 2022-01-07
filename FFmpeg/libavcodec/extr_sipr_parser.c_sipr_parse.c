
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int pc; } ;
typedef TYPE_1__ SiprParserContext ;
typedef int ParseContext ;
typedef TYPE_2__ AVCodecParserContext ;
typedef int AVCodecContext ;


 scalar_t__ ff_combine_frame (int *,int,int const**,int*) ;
 int sipr_split (int *,int const*,int) ;

__attribute__((used)) static int sipr_parse(AVCodecParserContext *s1, AVCodecContext *avctx,
                      const uint8_t **poutbuf, int *poutbuf_size,
                      const uint8_t *buf, int buf_size)
{
    SiprParserContext *s = s1->priv_data;
    ParseContext *pc = &s->pc;
    int next;

    next = sipr_split(avctx, buf, buf_size);
    if (ff_combine_frame(pc, next, &buf, &buf_size) < 0) {
        *poutbuf = ((void*)0);
        *poutbuf_size = 0;
        return buf_size;
    }

    *poutbuf = buf;
    *poutbuf_size = buf_size;
    return next;
}
