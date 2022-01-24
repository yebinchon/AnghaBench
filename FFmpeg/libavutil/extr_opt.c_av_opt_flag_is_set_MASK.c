#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_4__ {int i64; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ default_val; int /*<<< orphan*/ * unit; } ;
typedef  TYPE_2__ AVOption ;

/* Variables and functions */
 scalar_t__ AV_OPT_TYPE_CONST ; 
 TYPE_2__* FUNC0 (void*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void*,char const*,int /*<<< orphan*/ ,int*) ; 

int FUNC2(void *obj, const char *field_name, const char *flag_name)
{
    const AVOption *field = FUNC0(obj, field_name, NULL, 0, 0);
    const AVOption *flag  = FUNC0(obj, flag_name,
                                        field ? field->unit : NULL, 0, 0);
    int64_t res;

    if (!field || !flag || flag->type != AV_OPT_TYPE_CONST ||
        FUNC1(obj, field_name, 0, &res) < 0)
        return 0;
    return res & flag->default_val.i64;
}