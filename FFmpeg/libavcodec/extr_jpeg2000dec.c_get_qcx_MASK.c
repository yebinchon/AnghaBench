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
struct TYPE_6__ {int /*<<< orphan*/  g; } ;
struct TYPE_5__ {int nguardbits; int quantsty; int* expn; int* mant; } ;
typedef  TYPE_1__ Jpeg2000QuantStyle ;
typedef  TYPE_2__ Jpeg2000DecoderContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int JPEG2000_MAX_DECLEVELS ; 
 int JPEG2000_QSTY_NONE ; 
 int JPEG2000_QSTY_SI ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(Jpeg2000DecoderContext *s, int n, Jpeg2000QuantStyle *q)
{
    int i, x;

    if (FUNC2(&s->g) < 1)
        return AVERROR_INVALIDDATA;

    x = FUNC3(&s->g); // Sqcd

    q->nguardbits = x >> 5;
    q->quantsty   = x & 0x1f;

    if (q->quantsty == JPEG2000_QSTY_NONE) {
        n -= 3;
        if (FUNC2(&s->g) < n ||
            n > JPEG2000_MAX_DECLEVELS*3)
            return AVERROR_INVALIDDATA;
        for (i = 0; i < n; i++)
            q->expn[i] = FUNC3(&s->g) >> 3;
    } else if (q->quantsty == JPEG2000_QSTY_SI) {
        if (FUNC2(&s->g) < 2)
            return AVERROR_INVALIDDATA;
        x          = FUNC1(&s->g);
        q->expn[0] = x >> 11;
        q->mant[0] = x & 0x7ff;
        for (i = 1; i < JPEG2000_MAX_DECLEVELS * 3; i++) {
            int curexpn = FUNC0(0, q->expn[0] - (i - 1) / 3);
            q->expn[i] = curexpn;
            q->mant[i] = q->mant[0];
        }
    } else {
        n = (n - 3) >> 1;
        if (FUNC2(&s->g) < 2 * n ||
            n > JPEG2000_MAX_DECLEVELS*3)
            return AVERROR_INVALIDDATA;
        for (i = 0; i < n; i++) {
            x          = FUNC1(&s->g);
            q->expn[i] = x >> 11;
            q->mant[i] = x & 0x7ff;
        }
    }
    return 0;
}