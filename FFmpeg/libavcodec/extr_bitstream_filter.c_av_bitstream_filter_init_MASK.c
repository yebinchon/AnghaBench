#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ctx; struct TYPE_6__* priv_data; int /*<<< orphan*/  const* filter; } ;
typedef  TYPE_1__ BSFCompatContext ;
typedef  TYPE_1__ AVBitStreamFilterContext ;
typedef  int /*<<< orphan*/  AVBitStreamFilter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**) ; 
 TYPE_1__* FUNC3 (int) ; 

AVBitStreamFilterContext *FUNC4(const char *name)
{
    AVBitStreamFilterContext *ctx = NULL;
    BSFCompatContext         *priv = NULL;
    const AVBitStreamFilter *bsf;

    bsf = FUNC1(name);
    if (!bsf)
        return NULL;

    ctx = FUNC3(sizeof(*ctx));
    if (!ctx)
        return NULL;

    priv = FUNC3(sizeof(*priv));
    if (!priv)
        goto fail;


    ctx->filter    = bsf;
    ctx->priv_data = priv;

    return ctx;

fail:
    if (priv)
        FUNC0(&priv->ctx);
    FUNC2(&priv);
    FUNC2(&ctx);
    return NULL;
}