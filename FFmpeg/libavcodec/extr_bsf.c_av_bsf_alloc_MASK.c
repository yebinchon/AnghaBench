#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {struct TYPE_10__* priv_data; TYPE_1__* internal; void* par_out; void* par_in; TYPE_2__ const* filter; int /*<<< orphan*/ * av_class; } ;
struct TYPE_9__ {int priv_data_size; int /*<<< orphan*/ * priv_class; } ;
struct TYPE_8__ {int /*<<< orphan*/  buffer_pkt; } ;
typedef  int /*<<< orphan*/  AVClass ;
typedef  TYPE_2__ AVBitStreamFilter ;
typedef  TYPE_3__ AVBSFContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__**) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 void* FUNC5 () ; 
 int /*<<< orphan*/  bsf_class ; 

int FUNC6(const AVBitStreamFilter *filter, AVBSFContext **pctx)
{
    AVBSFContext *ctx;
    int ret;

    ctx = FUNC2(sizeof(*ctx));
    if (!ctx)
        return FUNC0(ENOMEM);

    ctx->av_class = &bsf_class;
    ctx->filter   = filter;

    ctx->par_in  = FUNC5();
    ctx->par_out = FUNC5();
    if (!ctx->par_in || !ctx->par_out) {
        ret = FUNC0(ENOMEM);
        goto fail;
    }

    ctx->internal = FUNC2(sizeof(*ctx->internal));
    if (!ctx->internal) {
        ret = FUNC0(ENOMEM);
        goto fail;
    }

    ctx->internal->buffer_pkt = FUNC4();
    if (!ctx->internal->buffer_pkt) {
        ret = FUNC0(ENOMEM);
        goto fail;
    }

    FUNC3(ctx);

    /* allocate priv data and init private options */
    if (filter->priv_data_size) {
        ctx->priv_data = FUNC2(filter->priv_data_size);
        if (!ctx->priv_data) {
            ret = FUNC0(ENOMEM);
            goto fail;
        }
        if (filter->priv_class) {
            *(const AVClass **)ctx->priv_data = filter->priv_class;
            FUNC3(ctx->priv_data);
        }
    }

    *pctx = ctx;
    return 0;
fail:
    FUNC1(&ctx);
    return ret;
}