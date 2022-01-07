
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int coded_width; int coded_height; } ;
struct TYPE_6__ {int* linesize; int ** data; } ;
typedef TYPE_1__ AVFrame ;
typedef TYPE_2__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int copy_block(AVCodecContext *avctx, AVFrame *dst, AVFrame *src,
                      int plane, int x, int y, int dx, int dy, int size)
{
    int shift = plane > 0;
    int sx = x + dx;
    int sy = y + dy;
    int sstride, dstride, soff, doff;
    uint8_t *sbuf, *dbuf;
    int i;

    if (x < 0 || sx < 0 || y < 0 || sy < 0 ||
        x + size > avctx->coded_width >> shift ||
        y + size > avctx->coded_height >> shift ||
        sx + size > avctx->coded_width >> shift ||
        sy + size > avctx->coded_height >> shift)
        return AVERROR_INVALIDDATA;

    sstride = src->linesize[plane];
    dstride = dst->linesize[plane];
    soff = sx + sy * sstride;
    sbuf = src->data[plane];
    doff = x + y * dstride;
    dbuf = dst->data[plane];

    for (i = 0; i < size; i++) {
        uint8_t *dptr = &dbuf[doff];
        uint8_t *sptr = &sbuf[soff];

        memcpy(dptr, sptr, size);
        doff += dstride;
        soff += sstride;
    }

    return 0;
}
