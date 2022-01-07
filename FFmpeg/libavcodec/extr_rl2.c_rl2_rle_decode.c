
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int* back_frame; TYPE_1__* avctx; } ;
struct TYPE_4__ {int width; int height; } ;
typedef TYPE_2__ Rl2Context ;


 int memcpy (int*,int const*,int) ;

__attribute__((used)) static void rl2_rle_decode(Rl2Context *s, const uint8_t *in, int size,
                               uint8_t *out, int stride, int video_base)
{
    int base_x = video_base % s->avctx->width;
    int base_y = video_base / s->avctx->width;
    int stride_adj = stride - s->avctx->width;
    int i;
    const uint8_t *back_frame = s->back_frame;
    const uint8_t *in_end = in + size;
    const uint8_t *out_end = out + stride * s->avctx->height;
    uint8_t *line_end;


    for (i = 0; i <= base_y; i++) {
        if (s->back_frame)
            memcpy(out, back_frame, s->avctx->width);
        out += stride;
        back_frame += s->avctx->width;
    }
    back_frame += base_x - s->avctx->width;
    line_end = out - stride_adj;
    out += base_x - stride;


    while (in < in_end) {
        uint8_t val = *in++;
        int len = 1;
        if (val >= 0x80) {
            if (in >= in_end)
                break;
            len = *in++;
            if (!len)
                break;
        }

        if (len >= out_end - out)
            break;

        if (s->back_frame)
            val |= 0x80;
        else
            val &= ~0x80;

        while (len--) {
            *out++ = (val == 0x80) ? *back_frame : val;
            back_frame++;
            if (out == line_end) {
                 out += stride_adj;
                 line_end += stride;
                 if (len >= out_end - out)
                     break;
            }
        }
    }


    if (s->back_frame) {
        while (out < out_end) {
            memcpy(out, back_frame, line_end - out);
            back_frame += line_end - out;
            out = line_end + stride_adj;
            line_end += stride;
        }
    }
}
