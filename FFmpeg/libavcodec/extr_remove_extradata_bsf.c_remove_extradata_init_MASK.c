#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  codec_id; } ;
struct TYPE_6__ {TYPE_4__* par_in; TYPE_1__* priv_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  avctx; scalar_t__ parser; } ;
typedef  TYPE_1__ RemoveExtradataContext ;
typedef  TYPE_2__ AVBSFContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_4__*) ; 

__attribute__((used)) static int FUNC4(AVBSFContext *ctx)
{
    RemoveExtradataContext *s = ctx->priv_data;
    int ret;

    s->parser = FUNC1(ctx->par_in->codec_id);

    if (s->parser) {
        s->avctx = FUNC2(NULL);
        if (!s->avctx)
            return FUNC0(ENOMEM);

        ret = FUNC3(s->avctx, ctx->par_in);
        if (ret < 0)
            return ret;
    }

    return 0;
}