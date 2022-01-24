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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {char* pattern; int w; double h; int* buf; } ;
typedef  TYPE_1__ CellAutoContext ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 double M_PHI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*,int,...) ; 
 int* FUNC3 (int,double) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(AVFilterContext *ctx)
{
    CellAutoContext *s = ctx->priv;
    char *p;
    int i, w = 0;

    w = FUNC4(s->pattern);
    FUNC2(ctx, AV_LOG_DEBUG, "w:%d\n", w);

    if (s->w) {
        if (w > s->w) {
            FUNC2(ctx, AV_LOG_ERROR,
                   "The specified width is %d which cannot contain the provided string width of %d\n",
                   s->w, w);
            return FUNC0(EINVAL);
        }
    } else {
        /* width was not specified, set it to width of the provided row */
        s->w = w;
        s->h = (double)s->w * M_PHI;
    }

    s->buf = FUNC3(sizeof(uint8_t) * s->w, s->h);
    if (!s->buf)
        return FUNC0(ENOMEM);

    /* fill buf */
    p = s->pattern;
    for (i = (s->w - w)/2;; i++) {
        FUNC2(ctx, AV_LOG_DEBUG, "%d %c\n", i, *p == '\n' ? 'N' : *p);
        if (*p == '\n' || !*p)
            break;
        else
            s->buf[i] = !!FUNC1(*(p++));
    }

    return 0;
}