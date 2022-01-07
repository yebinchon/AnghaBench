
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int width; int height; } ;
struct TYPE_5__ {int** data; int * linesize; } ;
typedef int GetByteContext ;
typedef TYPE_1__ AVFrame ;
typedef TYPE_2__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int bytestream2_get_be16 (int *) ;
 int bytestream2_get_byte (int *) ;
 int bytestream2_get_bytes_left (int *) ;

__attribute__((used)) static int decode_rle(AVCodecContext *avctx, AVFrame *p, GetByteContext *gbc,
                      int step)
{
    int i, j;
    int offset = avctx->width * step;
    uint8_t *outdata = p->data[0];

    for (i = 0; i < avctx->height; i++) {
        int size, left, code, pix;
        uint8_t *out = outdata;
        int pos = 0;


        size = left = bytestream2_get_be16(gbc);
        if (bytestream2_get_bytes_left(gbc) < size)
            return AVERROR_INVALIDDATA;


        while (left > 0) {
            code = bytestream2_get_byte(gbc);
            if (code & 0x80 ) {
                pix = bytestream2_get_byte(gbc);
                for (j = 0; j < 257 - code; j++) {
                    if (pos < offset)
                        out[pos] = pix;
                    pos += step;
                    if (pos >= offset && step > 1) {
                        pos -= offset;
                        pos++;
                    }
                }
                left -= 2;
            } else {
                for (j = 0; j < code + 1; j++) {
                    pix = bytestream2_get_byte(gbc);
                    if (pos < offset)
                        out[pos] = pix;
                    pos += step;
                    if (pos >= offset && step > 1) {
                        pos -= offset;
                        pos++;
                    }
                }
                left -= 2 + code;
            }
        }
        outdata += p->linesize[0];
    }
    return 0;
}
