
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int extradata_size; int channels; scalar_t__ extradata; } ;
struct TYPE_7__ {int duration; TYPE_1__* priv_data; } ;
struct TYPE_6__ {int duration; } ;
typedef TYPE_1__ CookParseContext ;
typedef TYPE_2__ AVCodecParserContext ;
typedef TYPE_3__ AVCodecContext ;


 int AV_RB16 (scalar_t__) ;

__attribute__((used)) static int cook_parse(AVCodecParserContext *s1, AVCodecContext *avctx,
                      const uint8_t **poutbuf, int *poutbuf_size,
                      const uint8_t *buf, int buf_size)
{
    CookParseContext *s = s1->priv_data;

    if (!s->duration &&
                avctx->extradata && avctx->extradata_size >= 8 && avctx->channels)
        s->duration = AV_RB16(avctx->extradata + 4) / avctx->channels;

    s1->duration = s->duration;



    *poutbuf = buf;
    *poutbuf_size = buf_size;
    return buf_size;
}
