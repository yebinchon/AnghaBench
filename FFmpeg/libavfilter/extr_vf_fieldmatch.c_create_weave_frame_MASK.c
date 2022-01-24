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
struct TYPE_6__ {TYPE_1__** outputs; int /*<<< orphan*/ * priv; } ;
struct TYPE_5__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
typedef  int /*<<< orphan*/  FieldMatchContext ;
typedef  int /*<<< orphan*/  const AVFrame ;
typedef  TYPE_1__ AVFilterLink ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  const* FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  mB 131 
 int mC ; 
#define  mN 130 
#define  mP 129 
#define  mU 128 

__attribute__((used)) static AVFrame *FUNC5(AVFilterContext *ctx, int match, int field,
                                   const AVFrame *prv, AVFrame *src, const AVFrame *nxt)
{
    AVFrame *dst;
    FieldMatchContext *fm = ctx->priv;

    if (match == mC) {
        dst = FUNC1(src);
    } else {
        AVFilterLink *outlink = ctx->outputs[0];

        dst = FUNC4(outlink, outlink->w, outlink->h);
        if (!dst)
            return NULL;
        FUNC2(dst, src);

        switch (match) {
        case mP: FUNC3(fm, dst, src, 1-field); FUNC3(fm, dst, prv,   field); break;
        case mN: FUNC3(fm, dst, src, 1-field); FUNC3(fm, dst, nxt,   field); break;
        case mB: FUNC3(fm, dst, src,   field); FUNC3(fm, dst, prv, 1-field); break;
        case mU: FUNC3(fm, dst, src,   field); FUNC3(fm, dst, nxt, 1-field); break;
        default: FUNC0(0);
        }
    }
    return dst;
}