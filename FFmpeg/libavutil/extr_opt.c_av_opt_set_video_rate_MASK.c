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
struct TYPE_6__ {scalar_t__ type; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {scalar_t__ num; scalar_t__ den; } ;
typedef  TYPE_1__ AVRational ;
typedef  TYPE_2__ AVOption ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_OPTION_NOT_FOUND ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ AV_OPT_TYPE_VIDEO_RATE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (void*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,void**) ; 
 int FUNC3 (void*,char const*,scalar_t__,scalar_t__,int,int) ; 

int FUNC4(void *obj, const char *name, AVRational val, int search_flags)
{
    void *target_obj;
    const AVOption *o = FUNC2(obj, name, NULL, 0, search_flags, &target_obj);

    if (!o || !target_obj)
        return AVERROR_OPTION_NOT_FOUND;
    if (o->type != AV_OPT_TYPE_VIDEO_RATE) {
        FUNC1(obj, AV_LOG_ERROR,
               "The value set by option '%s' is not a video rate.\n", o->name);
        return FUNC0(EINVAL);
    }
    if (val.num <= 0 || val.den <= 0)
        return FUNC0(EINVAL);
    return FUNC3(obj, name, val.num, val.den, 1, search_flags);
}