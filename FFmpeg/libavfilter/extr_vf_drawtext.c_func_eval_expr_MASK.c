#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {int /*<<< orphan*/  prng; int /*<<< orphan*/  var_values; } ;
typedef  TYPE_1__ DrawTextContext ;
typedef  TYPE_2__ AVFilterContext ;
typedef  int /*<<< orphan*/  AVBPrint ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,double) ; 
 int FUNC1 (double*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  fun2 ; 
 int /*<<< orphan*/  fun2_names ; 
 int /*<<< orphan*/  var_names ; 

__attribute__((used)) static int FUNC3(AVFilterContext *ctx, AVBPrint *bp,
                          char *fct, unsigned argc, char **argv, int tag)
{
    DrawTextContext *s = ctx->priv;
    double res;
    int ret;

    ret = FUNC1(&res, argv[0], var_names, s->var_values,
                                 NULL, NULL, fun2_names, fun2,
                                 &s->prng, 0, ctx);
    if (ret < 0)
        FUNC2(ctx, AV_LOG_ERROR,
               "Expression '%s' for the expr text expansion function is not valid\n",
               argv[0]);
    else
        FUNC0(bp, "%f", res);

    return ret;
}