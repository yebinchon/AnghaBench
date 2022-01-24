#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  f0r_param_info_t ;
struct TYPE_8__ {TYPE_2__* priv; } ;
struct TYPE_6__ {int num_params; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* get_param_info ) (int /*<<< orphan*/ *,int) ;TYPE_1__ plugin_info; } ;
typedef  TYPE_2__ Frei0rContext ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const**,char*) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(AVFilterContext *ctx, const char *params)
{
    Frei0rContext *s = ctx->priv;
    int i;

    if (!params)
        return 0;

    for (i = 0; i < s->plugin_info.num_params; i++) {
        f0r_param_info_t info;
        char *param;
        int ret;

        s->get_param_info(&info, i);

        if (*params) {
            if (!(param = FUNC2(&params, "|")))
                return FUNC0(ENOMEM);
            if (*params)
                params++;               /* skip ':' */
            ret = FUNC3(ctx, info, i, param);
            FUNC1(param);
            if (ret < 0)
                return ret;
        }
    }

    return 0;
}