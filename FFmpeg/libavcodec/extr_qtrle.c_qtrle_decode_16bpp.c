
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int int8_t ;
struct TYPE_7__ {int g; TYPE_2__* avctx; TYPE_1__* frame; } ;
struct TYPE_6__ {int height; } ;
struct TYPE_5__ {int* linesize; int ** data; } ;
typedef TYPE_3__ QtrleContext ;


 int CHECK_PIXEL_PTR (int) ;
 int bytestream2_get_be16 (int *) ;
 int bytestream2_get_byte (int *) ;
 int bytestream2_get_bytes_left (int *) ;

__attribute__((used)) static void qtrle_decode_16bpp(QtrleContext *s, int row_ptr, int lines_to_change)
{
    int rle_code;
    int pixel_ptr;
    int row_inc = s->frame->linesize[0];
    uint16_t rgb16;
    uint8_t *rgb = s->frame->data[0];
    int pixel_limit = s->frame->linesize[0] * s->avctx->height;

    while (lines_to_change--) {
        pixel_ptr = row_ptr + (bytestream2_get_byte(&s->g) - 1) * 2;
        CHECK_PIXEL_PTR(0);

        while ((rle_code = (int8_t)bytestream2_get_byte(&s->g)) != -1) {
            if (bytestream2_get_bytes_left(&s->g) < 1)
                return;
            if (rle_code == 0) {

                pixel_ptr += (bytestream2_get_byte(&s->g) - 1) * 2;
                CHECK_PIXEL_PTR(0);
            } else if (rle_code < 0) {

                rle_code = -rle_code;
                rgb16 = bytestream2_get_be16(&s->g);

                CHECK_PIXEL_PTR(rle_code * 2);

                while (rle_code--) {
                    *(uint16_t *)(&rgb[pixel_ptr]) = rgb16;
                    pixel_ptr += 2;
                }
            } else {
                CHECK_PIXEL_PTR(rle_code * 2);


                while (rle_code--) {
                    rgb16 = bytestream2_get_be16(&s->g);
                    *(uint16_t *)(&rgb[pixel_ptr]) = rgb16;
                    pixel_ptr += 2;
                }
            }
        }
        row_ptr += row_inc;
    }
}
