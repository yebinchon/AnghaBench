#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  enum AVOptionType { ____Placeholder_AVOptionType } AVOptionType ;
struct TYPE_3__ {int type; int offset; } ;
typedef  TYPE_1__ AVOption ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_OPTION_NOT_FOUND ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 TYPE_1__* FUNC2 (void*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,void**) ; 

__attribute__((used)) static int FUNC3(void *obj, const char *name, int search_flags, int *out_fmt,
                      enum AVOptionType type, const char *desc)
{
    void *dst, *target_obj;
    const AVOption *o = FUNC2(obj, name, NULL, 0, search_flags, &target_obj);
    if (!o || !target_obj)
        return AVERROR_OPTION_NOT_FOUND;
    if (o->type != type) {
        FUNC1(obj, AV_LOG_ERROR,
               "The value for option '%s' is not a %s format.\n", desc, name);
        return FUNC0(EINVAL);
    }

    dst = ((uint8_t*)target_obj) + o->offset;
    *out_fmt = *(int *)dst;
    return 0;
}