
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int8_t ;
struct TYPE_7__ {int g; TYPE_2__* avctx; TYPE_1__* frame; } ;
struct TYPE_6__ {int height; } ;
struct TYPE_5__ {int* linesize; int** data; } ;
typedef TYPE_3__ QtrleContext ;


 int CHECK_PIXEL_PTR (int) ;
 int bytestream2_get_buffer (int *,int*,int) ;
 int bytestream2_get_byte (int *) ;
 int bytestream2_get_bytes_left (int *) ;

__attribute__((used)) static void qtrle_decode_8bpp(QtrleContext *s, int row_ptr, int lines_to_change)
{
    int rle_code;
    int pixel_ptr;
    int row_inc = s->frame->linesize[0];
    uint8_t pi1, pi2, pi3, pi4;
    uint8_t *rgb = s->frame->data[0];
    int pixel_limit = s->frame->linesize[0] * s->avctx->height;

    while (lines_to_change--) {
        pixel_ptr = row_ptr + (4 * (bytestream2_get_byte(&s->g) - 1));
        CHECK_PIXEL_PTR(0);

        while ((rle_code = (int8_t)bytestream2_get_byte(&s->g)) != -1) {
            if (bytestream2_get_bytes_left(&s->g) < 1)
                return;
            if (rle_code == 0) {

                pixel_ptr += (4 * (bytestream2_get_byte(&s->g) - 1));
                CHECK_PIXEL_PTR(0);
            } else if (rle_code < 0) {

                rle_code = -rle_code;


                pi1 = bytestream2_get_byte(&s->g);
                pi2 = bytestream2_get_byte(&s->g);
                pi3 = bytestream2_get_byte(&s->g);
                pi4 = bytestream2_get_byte(&s->g);

                CHECK_PIXEL_PTR(rle_code * 4);

                while (rle_code--) {
                    rgb[pixel_ptr++] = pi1;
                    rgb[pixel_ptr++] = pi2;
                    rgb[pixel_ptr++] = pi3;
                    rgb[pixel_ptr++] = pi4;
                }
            } else {

                rle_code *= 4;
                CHECK_PIXEL_PTR(rle_code);

                bytestream2_get_buffer(&s->g, &rgb[pixel_ptr], rle_code);
                pixel_ptr += rle_code;
            }
        }
        row_ptr += row_inc;
    }
}
