
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_9__ {int width; int height; TYPE_1__* priv_data; } ;
struct TYPE_8__ {int * run_model; int * op_model; int rc; int gb; } ;
typedef TYPE_1__ SCPRContext ;
typedef int GetByteContext ;
typedef TYPE_2__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int bytestream2_skip (int *,int) ;
 int decode_run_i (TYPE_2__*,int,int,int*,int*,int,int*,int,int*,int*,int,int,int*,int*) ;
 int decode_units (TYPE_1__*,int*,int*,int*,int*,int*) ;
 int decode_value (TYPE_1__*,int ,int,int,int*) ;
 int init_rangecoder (int *,int *) ;
 int reinit_tables (TYPE_1__*) ;

__attribute__((used)) static int decompress_i(AVCodecContext *avctx, uint32_t *dst, int linesize)
{
    SCPRContext *s = avctx->priv_data;
    GetByteContext *gb = &s->gb;
    int cx = 0, cx1 = 0, k = 0;
    int run, off, y = 0, x = 0, ret;
    uint32_t clr = 0, r, g, b, backstep = linesize - avctx->width;
    uint32_t lx, ly, ptype;

    reinit_tables(s);
    bytestream2_skip(gb, 2);
    init_rangecoder(&s->rc, gb);

    while (k < avctx->width + 1) {
        ret = decode_units(s, &r, &g, &b, &cx, &cx1);
        if (ret < 0)
            return ret;

        ret = decode_value(s, s->run_model[0], 256, 400, &run);
        if (ret < 0)
            return ret;
        if (run <= 0)
            return AVERROR_INVALIDDATA;

        clr = (b << 16) + (g << 8) + r;
        k += run;
        while (run-- > 0) {
            if (y >= avctx->height)
                return AVERROR_INVALIDDATA;

            dst[y * linesize + x] = clr;
            lx = x;
            ly = y;
            x++;
            if (x >= avctx->width) {
                x = 0;
                y++;
            }
        }
    }
    off = -linesize - 1;
    ptype = 0;

    while (x < avctx->width && y < avctx->height) {
        ret = decode_value(s, s->op_model[ptype], 6, 1000, &ptype);
        if (ret < 0)
            return ret;
        if (ptype == 0) {
            ret = decode_units(s, &r, &g, &b, &cx, &cx1);
            if (ret < 0)
                return ret;

            clr = (b << 16) + (g << 8) + r;
        }
        if (ptype > 5)
            return AVERROR_INVALIDDATA;
        ret = decode_value(s, s->run_model[ptype], 256, 400, &run);
        if (ret < 0)
            return ret;
        if (run <= 0)
            return AVERROR_INVALIDDATA;

        ret = decode_run_i(avctx, ptype, run, &x, &y, clr,
                           dst, linesize, &lx, &ly,
                           backstep, off, &cx, &cx1);
        if (ret < 0)
            return ret;
    }

    return 0;
}
