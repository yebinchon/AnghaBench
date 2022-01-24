#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned int* median; int error_limit; int /*<<< orphan*/  slow_level; } ;
typedef  TYPE_1__ WvChannel ;
struct TYPE_6__ {int zero; int one; int zeroes; int /*<<< orphan*/  avctx; scalar_t__ hybrid_bitrate; scalar_t__ hybrid; TYPE_1__* ch; } ;
typedef  TYPE_2__ WavpackFrameContext ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (TYPE_2__*) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(WavpackFrameContext *ctx, GetBitContext *gb,
                        int channel, int *last)
{
    int t, t2;
    int sign, base, add, ret;
    WvChannel *c = &ctx->ch[channel];

    *last = 0;

    if ((ctx->ch[0].median[0] < 2U) && (ctx->ch[1].median[0] < 2U) &&
        !ctx->zero && !ctx->one) {
        if (ctx->zeroes) {
            ctx->zeroes--;
            if (ctx->zeroes) {
                c->slow_level -= FUNC3(c->slow_level);
                return 0;
            }
        } else {
            t = FUNC9(gb);
            if (t >= 2) {
                if (t >= 32 || FUNC6(gb) < t - 1)
                    goto error;
                t = FUNC7(gb, t - 1) | (1 << (t - 1));
            } else {
                if (FUNC6(gb) < 0)
                    goto error;
            }
            ctx->zeroes = t;
            if (ctx->zeroes) {
                FUNC10(ctx->ch[0].median, 0, sizeof(ctx->ch[0].median));
                FUNC10(ctx->ch[1].median, 0, sizeof(ctx->ch[1].median));
                c->slow_level -= FUNC3(c->slow_level);
                return 0;
            }
        }
    }

    if (ctx->zero) {
        t         = 0;
        ctx->zero = 0;
    } else {
        t = FUNC9(gb);
        if (FUNC6(gb) < 0)
            goto error;
        if (t == 16) {
            t2 = FUNC9(gb);
            if (t2 < 2) {
                if (FUNC6(gb) < 0)
                    goto error;
                t += t2;
            } else {
                if (t2 >= 32 || FUNC6(gb) < t2 - 1)
                    goto error;
                t += FUNC7(gb, t2 - 1) | (1 << (t2 - 1));
            }
        }

        if (ctx->one) {
            ctx->one = t & 1;
            t        = (t >> 1) + 1;
        } else {
            ctx->one = t & 1;
            t      >>= 1;
        }
        ctx->zero = !ctx->one;
    }

    if (ctx->hybrid && !channel) {
        if (FUNC11(ctx) < 0)
            goto error;
    }

    if (!t) {
        base = 0;
        add  = FUNC1(0) - 1;
        FUNC0(0);
    } else if (t == 1) {
        base = FUNC1(0);
        add  = FUNC1(1) - 1;
        FUNC2(0);
        FUNC0(1);
    } else if (t == 2) {
        base = FUNC1(0) + FUNC1(1);
        add  = FUNC1(2) - 1;
        FUNC2(0);
        FUNC2(1);
        FUNC0(2);
    } else {
        base = FUNC1(0) + FUNC1(1) + FUNC1(2) * (t - 2U);
        add  = FUNC1(2) - 1;
        FUNC2(0);
        FUNC2(1);
        FUNC2(2);
    }
    if (!c->error_limit) {
        if (add >= 0x2000000U) {
            FUNC4(ctx->avctx, AV_LOG_ERROR, "k %d is too large\n", add);
            goto error;
        }
        ret = base + FUNC8(gb, add);
        if (FUNC6(gb) <= 0)
            goto error;
    } else {
        int mid = (base * 2U + add + 1) >> 1;
        while (add > c->error_limit) {
            if (FUNC6(gb) <= 0)
                goto error;
            if (FUNC5(gb)) {
                add -= (mid - (unsigned)base);
                base = mid;
            } else
                add = mid - (unsigned)base - 1;
            mid = (base * 2U + add + 1) >> 1;
        }
        ret = mid;
    }
    sign = FUNC5(gb);
    if (ctx->hybrid_bitrate)
        c->slow_level += FUNC12(ret) - FUNC3(c->slow_level);
    return sign ? ~ret : ret;

error:
    ret = FUNC6(gb);
    if (ret <= 0) {
        FUNC4(ctx->avctx, AV_LOG_ERROR, "Too few bits (%d) left\n", ret);
    }
    *last = 1;
    return 0;
}