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
struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {int sliding; int xpos; int xend; scalar_t__ phase; scalar_t__ magnitude; } ;
typedef  TYPE_1__ SpectrumSynthContext ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
#define  FULLFRAME 131 
#define  REPLACE 130 
#define  RSCROLL 129 
#define  SCROLL 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int FUNC2 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC3(AVFilterContext *ctx)
{
    SpectrumSynthContext *s = ctx->priv;
    int ret, x;

    if (!(s->magnitude && s->phase))
        return 0;

    switch (s->sliding) {
    case REPLACE:
        ret = FUNC2(ctx, s->xpos);
        s->xpos++;
        if (s->xpos >= s->xend)
            s->xpos = 0;
        break;
    case SCROLL:
        s->xpos = s->xend - 1;
        ret = FUNC2(ctx, s->xpos);
        break;
    case RSCROLL:
        s->xpos = 0;
        ret = FUNC2(ctx, s->xpos);
        break;
    case FULLFRAME:
        for (x = 0; x < s->xend; x++) {
            ret = FUNC2(ctx, x);
            if (ret < 0)
                break;
        }
        break;
    default:
        FUNC0(0);
    }

    FUNC1(&s->magnitude);
    FUNC1(&s->phase);
    return ret;
}