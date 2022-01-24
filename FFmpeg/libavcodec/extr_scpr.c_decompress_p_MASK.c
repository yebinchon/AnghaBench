#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_8__ {int width; int height; TYPE_1__* priv_data; } ;
struct TYPE_7__ {int nbcount; int* blocks; int nby; int nbx; int /*<<< orphan*/ * run_model; int /*<<< orphan*/ * op_model; int /*<<< orphan*/ * mv_model; int /*<<< orphan*/ * sxy_model; int /*<<< orphan*/  last_frame; int /*<<< orphan*/  current_frame; int /*<<< orphan*/  count_model; int /*<<< orphan*/  fill_model; int /*<<< orphan*/  range_model; int /*<<< orphan*/  rc; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ SCPRContext ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (TYPE_2__*,size_t,int,int,int,size_t,size_t*,size_t*,int,int,int*,int*,int,int,int,int*,int*) ; 
 int FUNC4 (TYPE_1__*,size_t*,size_t*,size_t*,int*,int*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int,int,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(AVCodecContext *avctx,
                        uint32_t *dst, int linesize,
                        uint32_t *prev, int plinesize)
{
    SCPRContext *s = avctx->priv_data;
    GetByteContext *gb = &s->gb;
    int ret, temp = 0, min, max, x, y, cx = 0, cx1 = 0;
    int backstep = linesize - avctx->width;

    if (FUNC1(gb) == 0)
        return 1;
    FUNC2(gb, 1);
    FUNC6(&s->rc, gb);

    ret  = FUNC5(s, s->range_model, 256, 1, &min);
    ret |= FUNC5(s, s->range_model, 256, 1, &temp);
    if (ret < 0)
        return ret;

    min += temp << 8;
    ret  = FUNC5(s, s->range_model, 256, 1, &max);
    ret |= FUNC5(s, s->range_model, 256, 1, &temp);
    if (ret < 0)
        return ret;

    max += temp << 8;
    if (min > max || min >= s->nbcount)
        return AVERROR_INVALIDDATA;

    FUNC7(s->blocks, 0, sizeof(*s->blocks) * s->nbcount);

    while (min <= max) {
        int fill, count;

        ret  = FUNC5(s, s->fill_model,  5,   10, &fill);
        ret |= FUNC5(s, s->count_model, 256, 20, &count);
        if (ret < 0)
            return ret;
        if (count <= 0)
            return AVERROR_INVALIDDATA;

        while (min < s->nbcount && count-- > 0) {
            s->blocks[min++] = fill;
        }
    }

    ret = FUNC0(s->current_frame, s->last_frame);
    if (ret < 0)
        return ret;

    for (y = 0; y < s->nby; y++) {
        for (x = 0; x < s->nbx; x++) {
            int sy1 = 0, sy2 = 16, sx1 = 0, sx2 = 16;

            if (s->blocks[y * s->nbx + x] == 0)
                continue;

            if (((s->blocks[y * s->nbx + x] - 1) & 1) > 0) {
                ret  = FUNC5(s, s->sxy_model[0], 16, 100, &sx1);
                ret |= FUNC5(s, s->sxy_model[1], 16, 100, &sy1);
                ret |= FUNC5(s, s->sxy_model[2], 16, 100, &sx2);
                ret |= FUNC5(s, s->sxy_model[3], 16, 100, &sy2);
                if (ret < 0)
                    return ret;

                sx2++;
                sy2++;
            }
            if (((s->blocks[y * s->nbx + x] - 1) & 2) > 0) {
                int i, j, by = y * 16, bx = x * 16;
                int mvx, mvy;

                ret  = FUNC5(s, s->mv_model[0], 512, 100, &mvx);
                ret |= FUNC5(s, s->mv_model[1], 512, 100, &mvy);
                if (ret < 0)
                    return ret;

                mvx -= 256;
                mvy -= 256;

                if (by + mvy + sy1 < 0 || bx + mvx + sx1 < 0 ||
                    by + mvy + sy1 >= avctx->height || bx + mvx + sx1 >= avctx->width)
                    return AVERROR_INVALIDDATA;

                for (i = 0; i < sy2 - sy1 && (by + sy1 + i) < avctx->height && (by + mvy + sy1 + i) < avctx->height; i++) {
                    for (j = 0; j < sx2 - sx1 && (bx + sx1 + j) < avctx->width && (bx + mvx + sx1 + j) < avctx->width; j++) {
                        dst[(by + i + sy1) * linesize + bx + sx1 + j] = prev[(by + mvy + sy1 + i) * plinesize + bx + sx1 + mvx + j];
                    }
                }
            } else {
                int run, bx = x * 16 + sx1, by = y * 16 + sy1;
                uint32_t r, g, b, clr, ptype = 0;

                for (; by < y * 16 + sy2 && by < avctx->height;) {
                    ret = FUNC5(s, s->op_model[ptype], 6, 1000, &ptype);
                    if (ret < 0)
                        return ret;
                    if (ptype == 0) {
                        ret = FUNC4(s, &r, &g, &b, &cx, &cx1);
                        if (ret < 0)
                            return ret;

                        clr = (b << 16) + (g << 8) + r;
                    }
                    if (ptype > 5)
                        return AVERROR_INVALIDDATA;
                    ret = FUNC5(s, s->run_model[ptype], 256, 400, &run);
                    if (ret < 0)
                        return ret;
                    if (run <= 0)
                        return AVERROR_INVALIDDATA;

                    ret = FUNC3(avctx, ptype, run, x, y, clr,
                                       dst, prev, linesize, plinesize, &bx, &by,
                                       backstep, sx1, sx2, &cx, &cx1);
                    if (ret < 0)
                        return ret;
                }
            }
        }
    }

    return 0;
}