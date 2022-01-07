
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_6__ {int height; } ;
struct TYPE_5__ {int* linesize; int width; int height; scalar_t__** data; } ;
typedef int GetByteContext ;
typedef TYPE_1__ AVFrame ;
typedef TYPE_2__ AVCodecContext ;


 scalar_t__ bytestream2_get_byte (int *) ;
 scalar_t__ bytestream2_get_bytes_left (int *) ;
 unsigned int bytestream2_peek_le32 (int *) ;
 int bytestream2_skip (int *,int) ;

__attribute__((used)) static int decode_runlen_rgb(AVCodecContext *avctx, GetByteContext *gbyte, AVFrame *frame)
{
    uint8_t *dst = frame->data[0] + (avctx->height - 1) * frame->linesize[0];
    int runlen, y = 0, x = 0;
    uint8_t fill[4];
    unsigned code;

    while (bytestream2_get_bytes_left(gbyte) > 0) {
        code = bytestream2_peek_le32(gbyte);
        runlen = code & 0xFFFFFF;

        if (code >> 24 == 0x77) {
            bytestream2_skip(gbyte, 4);

            for (int i = 0; i < 4; i++)
                fill[i] = bytestream2_get_byte(gbyte);

            while (runlen > 0) {
                runlen--;

                for (int i = 0; i < 4; i++) {
                    dst[x] += fill[i];
                    x++;
                    if (x >= frame->width * 3) {
                        x = 0;
                        y++;
                        dst -= frame->linesize[0];
                        if (y >= frame->height)
                            return 0;
                    }
                }
            }
        } else {
            for (int i = 0; i < 4; i++)
                fill[i] = bytestream2_get_byte(gbyte);

            for (int i = 0; i < 4; i++) {
                dst[x] += fill[i];
                x++;
                if (x >= frame->width * 3) {
                    x = 0;
                    y++;
                    dst -= frame->linesize[0];
                    if (y >= frame->height)
                        return 0;
                }
            }
        }
    }

    return 0;
}
