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
struct TYPE_3__ {scalar_t__ type; int offset; } ;
typedef  TYPE_1__ AVOption ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_OPTION_NOT_FOUND ; 
 scalar_t__ AV_OPT_TYPE_DICT ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (void*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,void**) ; 

int FUNC3(void *obj, const char *name, int search_flags, AVDictionary **out_val)
{
    void *target_obj;
    AVDictionary *src;
    const AVOption *o = FUNC2(obj, name, NULL, 0, search_flags, &target_obj);

    if (!o || !target_obj)
        return AVERROR_OPTION_NOT_FOUND;
    if (o->type != AV_OPT_TYPE_DICT)
        return FUNC0(EINVAL);

    src = *(AVDictionary **)(((uint8_t *)target_obj) + o->offset);
    FUNC1(out_val, src, 0);

    return 0;
}