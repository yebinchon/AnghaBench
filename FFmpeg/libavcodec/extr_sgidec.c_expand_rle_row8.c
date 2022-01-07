
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned char uint8_t ;
struct TYPE_3__ {int g; int avctx; } ;
typedef TYPE_1__ SgiState ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*) ;
 unsigned char bytestream2_get_byte (int *) ;
 int bytestream2_get_bytes_left (int *) ;
 unsigned char bytestream2_get_byteu (int *) ;

__attribute__((used)) static int expand_rle_row8(SgiState *s, uint8_t *out_buf,
                           int len, int pixelstride)
{
    unsigned char pixel, count;
    unsigned char *orig = out_buf;
    uint8_t *out_end = out_buf + len;

    while (out_buf < out_end) {
        if (bytestream2_get_bytes_left(&s->g) < 1)
            return AVERROR_INVALIDDATA;
        pixel = bytestream2_get_byteu(&s->g);
        if (!(count = (pixel & 0x7f))) {
            break;
        }


        if (out_end - out_buf <= pixelstride * (count - 1)) {
            av_log(s->avctx, AV_LOG_ERROR, "Invalid pixel count.\n");
            return AVERROR_INVALIDDATA;
        }

        if (pixel & 0x80) {
            while (count--) {
                *out_buf = bytestream2_get_byte(&s->g);
                out_buf += pixelstride;
            }
        } else {
            pixel = bytestream2_get_byte(&s->g);

            while (count--) {
                *out_buf = pixel;
                out_buf += pixelstride;
            }
        }
    }
    return (out_buf - orig) / pixelstride;
}
