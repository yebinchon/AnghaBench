
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int height; int width; TYPE_1__* priv_data; } ;
struct TYPE_7__ {int * linesize; int ** data; } ;
struct TYPE_6__ {scalar_t__ big_endian; } ;
typedef TYPE_1__ DPXContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVCodecContext ;


 int AV_RB16 (int const*) ;
 int AV_RL16 (int const*) ;
 int write32 (int *,int) ;

__attribute__((used)) static void encode_rgb48_10bit(AVCodecContext *avctx, const AVFrame *pic,
                               uint8_t *dst)
{
    DPXContext *s = avctx->priv_data;
    const uint8_t *src = pic->data[0];
    int x, y;

    for (y = 0; y < avctx->height; y++) {
        for (x = 0; x < avctx->width; x++) {
            int value;
            if (s->big_endian) {
                value = ((AV_RB16(src + 6*x + 4) & 0xFFC0U) >> 4)
                      | ((AV_RB16(src + 6*x + 2) & 0xFFC0U) << 6)
                      | ((AV_RB16(src + 6*x + 0) & 0xFFC0U) << 16);
            } else {
                value = ((AV_RL16(src + 6*x + 4) & 0xFFC0U) >> 4)
                      | ((AV_RL16(src + 6*x + 2) & 0xFFC0U) << 6)
                      | ((AV_RL16(src + 6*x + 0) & 0xFFC0U) << 16);
            }
            write32(dst, value);
            dst += 4;
        }
        src += pic->linesize[0];
    }
}
