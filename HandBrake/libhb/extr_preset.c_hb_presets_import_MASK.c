#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int depth; } ;
struct TYPE_5__ {TYPE_1__ path; } ;
struct TYPE_6__ {int result; int /*<<< orphan*/  micro; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; TYPE_2__ do_ctx; } ;
typedef  TYPE_3__ preset_import_context_t ;
typedef  int /*<<< orphan*/  preset_do_context_t ;
typedef  int /*<<< orphan*/  const hb_value_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_preset_import ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  const* FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

int FUNC7(const hb_value_t *in, hb_value_t **out)
{
    preset_import_context_t   ctx;
    hb_value_t              * dup;

    ctx.do_ctx.path.depth = 1;
    ctx.result = 0;

    // Done modify the input
    dup = FUNC3(in);
    FUNC2(dup, &ctx.major, &ctx.minor, &ctx.micro);
    FUNC6(do_preset_import, dup, (preset_do_context_t*)&ctx);
    if (FUNC0(ctx.major, ctx.minor, ctx.micro, 29, 0, 0) <= 0)
    {
        hb_value_t * tmp;

        tmp  = FUNC5(dup);
        *out = FUNC1(tmp);
        FUNC4(&tmp);
    }
    else if (ctx.result)
    {
        *out = FUNC1(dup);
    }
    else
    {
        *out = FUNC3(dup);
    }
    FUNC4(&dup);

    return ctx.result;
}