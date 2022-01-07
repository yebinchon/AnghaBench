
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
struct TYPE_5__ {int* linesize; int** data; } ;
typedef TYPE_3__ QtrleContext ;


 int AV_WN16 (int*,int ) ;
 int AV_WN32 (int*,int ) ;
 int CHECK_PIXEL_PTR (int) ;
 int bytestream2_get_byte (int *) ;
 int bytestream2_get_bytes_left (int *) ;
 int bytestream2_get_ne16 (int *) ;
 int bytestream2_get_ne32 (int *) ;

__attribute__((used)) static void qtrle_decode_24bpp(QtrleContext *s, int row_ptr, int lines_to_change)
{
    int rle_code, rle_code_half;
    int pixel_ptr;
    int row_inc = s->frame->linesize[0];
    uint8_t b;
    uint16_t rg;
    uint8_t *rgb = s->frame->data[0];
    int pixel_limit = s->frame->linesize[0] * s->avctx->height;

    while (lines_to_change--) {
        pixel_ptr = row_ptr + (bytestream2_get_byte(&s->g) - 1) * 3;
        CHECK_PIXEL_PTR(0);

        while ((rle_code = (int8_t)bytestream2_get_byte(&s->g)) != -1) {
            if (bytestream2_get_bytes_left(&s->g) < 1)
                return;
            if (rle_code == 0) {

                pixel_ptr += (bytestream2_get_byte(&s->g) - 1) * 3;
                CHECK_PIXEL_PTR(0);
            } else if (rle_code < 0) {

                rle_code = -rle_code;
                rg = bytestream2_get_ne16(&s->g);
                b = bytestream2_get_byte(&s->g);

                CHECK_PIXEL_PTR(rle_code * 3);

                while (rle_code--) {
                    AV_WN16(rgb + pixel_ptr, rg);
                    rgb[pixel_ptr + 2] = b;
                    pixel_ptr += 3;
                }
            } else {
                CHECK_PIXEL_PTR(rle_code * 3);

                rle_code_half = rle_code / 2;

                while (rle_code_half--) {
                    AV_WN32(rgb + pixel_ptr, bytestream2_get_ne32(&s->g));
                    AV_WN16(rgb + pixel_ptr + 4, bytestream2_get_ne16(&s->g));
                    pixel_ptr += 6;
                }

                if (rle_code % 2 != 0){
                    AV_WN16(rgb + pixel_ptr, bytestream2_get_ne16(&s->g));
                    rgb[pixel_ptr + 2] = bytestream2_get_byte(&s->g);
                    pixel_ptr += 3;
                }
            }
        }
        row_ptr += row_inc;
    }
}
