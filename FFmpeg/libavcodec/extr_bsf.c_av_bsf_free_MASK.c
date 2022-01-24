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
struct TYPE_8__ {int /*<<< orphan*/  par_out; int /*<<< orphan*/  par_in; struct TYPE_8__* priv_data; struct TYPE_8__* internal; int /*<<< orphan*/  buffer_pkt; TYPE_1__* filter; } ;
struct TYPE_7__ {scalar_t__ priv_class; int /*<<< orphan*/  (* close ) (TYPE_2__*) ;} ;
typedef  TYPE_2__ AVBSFContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

void FUNC5(AVBSFContext **pctx)
{
    AVBSFContext *ctx;

    if (!pctx || !*pctx)
        return;
    ctx = *pctx;

    if (ctx->filter->close)
        ctx->filter->close(ctx);
    if (ctx->filter->priv_class && ctx->priv_data)
        FUNC1(ctx->priv_data);

    FUNC1(ctx);

    if (ctx->internal)
        FUNC2(&ctx->internal->buffer_pkt);
    FUNC0(&ctx->internal);
    FUNC0(&ctx->priv_data);

    FUNC3(&ctx->par_in);
    FUNC3(&ctx->par_out);

    FUNC0(pctx);
}