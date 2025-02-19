
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint8_t ;
struct TYPE_3__ {int buffer; } ;
typedef TYPE_1__ QpegContext ;


 int FFMIN (int,int) ;
 void* bytestream2_get_byte (int *) ;
 int bytestream2_get_bytes_left (int *) ;
 int memset (void**,int,int) ;

__attribute__((used)) static void qpeg_decode_intra(QpegContext *qctx, uint8_t *dst,
                              int stride, int width, int height)
{
    int i;
    int code;
    int c0, c1;
    int run, copy;
    int filled = 0;
    int rows_to_go;

    rows_to_go = height;
    height--;
    dst = dst + height * stride;

    while ((bytestream2_get_bytes_left(&qctx->buffer) > 0) && (rows_to_go > 0)) {
        code = bytestream2_get_byte(&qctx->buffer);
        run = copy = 0;
        if(code == 0xFC)
            break;
        if(code >= 0xF8) {
            c0 = bytestream2_get_byte(&qctx->buffer);
            c1 = bytestream2_get_byte(&qctx->buffer);
            run = ((code & 0x7) << 16) + (c0 << 8) + c1 + 2;
        } else if (code >= 0xF0) {
            c0 = bytestream2_get_byte(&qctx->buffer);
            run = ((code & 0xF) << 8) + c0 + 2;
        } else if (code >= 0xE0) {
            run = (code & 0x1F) + 2;
        } else if (code >= 0xC0) {
            c0 = bytestream2_get_byte(&qctx->buffer);
            c1 = bytestream2_get_byte(&qctx->buffer);
            copy = ((code & 0x3F) << 16) + (c0 << 8) + c1 + 1;
        } else if (code >= 0x80) {
            c0 = bytestream2_get_byte(&qctx->buffer);
            copy = ((code & 0x7F) << 8) + c0 + 1;
        } else {
            copy = code + 1;
        }


        if(run) {
            int p;

            p = bytestream2_get_byte(&qctx->buffer);
            for(i = 0; i < run; i++) {
                int step = FFMIN(run - i, width - filled);
                memset(dst+filled, p, step);
                filled += step;
                i += step - 1;
                if (filled >= width) {
                    filled = 0;
                    dst -= stride;
                    rows_to_go--;
                    while (run - i > width && rows_to_go > 0) {
                        memset(dst, p, width);
                        dst -= stride;
                        rows_to_go--;
                        i += width;
                    }
                    if(rows_to_go <= 0)
                        break;
                }
            }
        } else {
            if (bytestream2_get_bytes_left(&qctx->buffer) < copy)
                copy = bytestream2_get_bytes_left(&qctx->buffer);
            for(i = 0; i < copy; i++) {
                dst[filled++] = bytestream2_get_byte(&qctx->buffer);
                if (filled >= width) {
                    filled = 0;
                    dst -= stride;
                    rows_to_go--;
                    if(rows_to_go <= 0)
                        break;
                }
            }
        }
    }
}
