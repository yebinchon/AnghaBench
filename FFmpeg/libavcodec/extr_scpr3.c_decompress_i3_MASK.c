#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_13__ {int width; int height; TYPE_3__* priv_data; } ;
struct TYPE_12__ {TYPE_2__* run_model3; TYPE_1__* op_model3; int /*<<< orphan*/  rc; int /*<<< orphan*/  gb; } ;
struct TYPE_11__ {int /*<<< orphan*/  dectab; int /*<<< orphan*/  cnts; int /*<<< orphan*/ * freqs; int /*<<< orphan*/  cntsum; } ;
struct TYPE_10__ {int /*<<< orphan*/  dectab; int /*<<< orphan*/  cnts; int /*<<< orphan*/ * freqs; int /*<<< orphan*/  cntsum; } ;
typedef  TYPE_3__ SCPRContext ;
typedef  int /*<<< orphan*/  RangeCoder ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (TYPE_4__*,int,int,int*,int*,int,int*,int,int*,int*,int,int,int*,int*) ; 
 int FUNC2 (TYPE_3__*,int*,int*,int*,int*,int*) ; 
 int FUNC3 (TYPE_3__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC6(AVCodecContext *avctx, uint32_t *dst, int linesize)
{
    SCPRContext *s = avctx->priv_data;
    GetByteContext *gb = &s->gb;
    RangeCoder *rc = &s->rc;
    int cx = 0, cx1 = 0, k = 0;
    int run, off, y = 0, x = 0, ret;
    uint32_t backstep = linesize - avctx->width;
    uint32_t clr = 0, lx, ly, ptype, r, g, b;

    FUNC0(gb, 1);
    FUNC4(rc, gb);
    FUNC5(s);

    while (k < avctx->width + 1) {
        ret = FUNC2(s, &r, &g, &b, &cx, &cx1);
        if (ret < 0)
            return ret;
        ret = FUNC3(s, 255, &s->run_model3[0].cntsum,
                            s->run_model3[0].freqs[0],
                            s->run_model3[0].freqs[1],
                            s->run_model3[0].cnts,
                            s->run_model3[0].dectab, &run);
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
        ret = FUNC3(s, 5, &s->op_model3[ptype].cntsum,
                            s->op_model3[ptype].freqs[0],
                            s->op_model3[ptype].freqs[1],
                            s->op_model3[ptype].cnts,
                            s->op_model3[ptype].dectab, &ptype);
        if (ret < 0)
            return ret;
        if (ptype == 0) {
            ret = FUNC2(s, &r, &g, &b, &cx, &cx1);
            if (ret < 0)
                return ret;
            clr = (b << 16) + (g << 8) + r;
        }
        if (ptype > 5)
            return AVERROR_INVALIDDATA;
        ret = FUNC3(s, 255, &s->run_model3[ptype].cntsum,
                            s->run_model3[ptype].freqs[0],
                            s->run_model3[ptype].freqs[1],
                            s->run_model3[ptype].cnts,
                            s->run_model3[ptype].dectab, &run);
        if (ret < 0)
            return ret;
        if (run <= 0)
            return AVERROR_INVALIDDATA;

        ret = FUNC1(avctx, ptype, run, &x, &y, clr,
                           dst, linesize, &lx, &ly,
                           backstep, off, &cx, &cx1);
        if (ret < 0)
            return ret;
    }

    return 0;
}