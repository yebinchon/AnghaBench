
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {unsigned char** data; int * linesize; } ;
struct TYPE_7__ {TYPE_1__* avctx; } ;
struct TYPE_6__ {int height; int width; } ;
typedef TYPE_2__ CmvContext ;
typedef TYPE_3__ AVFrame ;


 int memcpy (unsigned char*,int const*,int) ;

__attribute__((used)) static void cmv_decode_intra(CmvContext * s, AVFrame *frame,
                             const uint8_t *buf, const uint8_t *buf_end)
{
    unsigned char *dst = frame->data[0];
    int i;

    for (i=0; i < s->avctx->height && buf_end - buf >= s->avctx->width; i++) {
        memcpy(dst, buf, s->avctx->width);
        dst += frame->linesize[0];
        buf += s->avctx->width;
    }
}
