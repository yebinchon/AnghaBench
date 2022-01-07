
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
 int bytestream2_get_byte (int *) ;
 int bytestream2_get_bytes_left (int *) ;
 int bytestream2_peek_byte (int *) ;
 int bytestream2_skip (int *,int) ;
 int memcpy (int*,int**,int) ;

__attribute__((used)) static inline void qtrle_decode_2n4bpp(QtrleContext *s, int row_ptr,
                                       int lines_to_change, int bpp)
{
    int rle_code, i;
    int pixel_ptr;
    int row_inc = s->frame->linesize[0];
    uint8_t pi[16];
    uint8_t *rgb = s->frame->data[0];
    int pixel_limit = s->frame->linesize[0] * s->avctx->height;
    int num_pixels = (bpp == 4) ? 8 : 16;

    while (lines_to_change--) {
        pixel_ptr = row_ptr + (num_pixels * (bytestream2_get_byte(&s->g) - 1));
        CHECK_PIXEL_PTR(0);

        while ((rle_code = (int8_t)bytestream2_get_byte(&s->g)) != -1) {
            if (bytestream2_get_bytes_left(&s->g) < 1)
                return;
            if (rle_code == 0) {

                pixel_ptr += (num_pixels * (bytestream2_get_byte(&s->g) - 1));
                CHECK_PIXEL_PTR(0);
            } else if (rle_code < 0) {

                rle_code = -rle_code;


                for (i = num_pixels-1; i >= 0; i--) {
                    pi[num_pixels-1-i] = (bytestream2_peek_byte(&s->g) >> ((i*bpp) & 0x07)) & ((1<<bpp)-1);
                    bytestream2_skip(&s->g, ((i & ((num_pixels>>2)-1)) == 0));
                }
                CHECK_PIXEL_PTR(rle_code * num_pixels);
                while (rle_code--) {
                    memcpy(&rgb[pixel_ptr], &pi, num_pixels);
                    pixel_ptr += num_pixels;
                }
            } else {

                rle_code *= 4;
                CHECK_PIXEL_PTR(rle_code*(num_pixels>>2));
                while (rle_code--) {
                    if(bpp == 4) {
                        int x = bytestream2_get_byte(&s->g);
                        rgb[pixel_ptr++] = (x >> 4) & 0x0f;
                        rgb[pixel_ptr++] = x & 0x0f;
                    } else {
                        int x = bytestream2_get_byte(&s->g);
                        rgb[pixel_ptr++] = (x >> 6) & 0x03;
                        rgb[pixel_ptr++] = (x >> 4) & 0x03;
                        rgb[pixel_ptr++] = (x >> 2) & 0x03;
                        rgb[pixel_ptr++] = x & 0x03;
                    }
                }
            }
        }
        row_ptr += row_inc;
    }
}
