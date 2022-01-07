
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int block_align; } ;
struct TYPE_5__ {int duration; } ;
typedef TYPE_1__ AVCodecParserContext ;
typedef TYPE_2__ AVCodecContext ;


 int dv_get_audio_sample_count (int const*,int) ;

__attribute__((used)) static int dvaudio_parse(AVCodecParserContext *s1, AVCodecContext *avctx,
                        const uint8_t **poutbuf, int *poutbuf_size,
                        const uint8_t *buf, int buf_size)
{
    if (buf_size >= 248)
        s1->duration = dv_get_audio_sample_count(buf + 244, avctx->block_align == 8640);



    *poutbuf = buf;
    *poutbuf_size = buf_size;
    return buf_size;
}
