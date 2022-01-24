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
struct TYPE_3__ {int flags; int offset; } ;
typedef  TYPE_1__ AVOption ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_OPTION_NOT_FOUND ; 
 int AV_OPT_FLAG_READONLY ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 TYPE_1__* FUNC3 (void*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,void**) ; 

int FUNC4(void *obj, const char *name, const AVDictionary *val,
                        int search_flags)
{
    void *target_obj;
    AVDictionary **dst;
    const AVOption *o = FUNC3(obj, name, NULL, 0, search_flags, &target_obj);

    if (!o || !target_obj)
        return AVERROR_OPTION_NOT_FOUND;
    if (o->flags & AV_OPT_FLAG_READONLY)
        return FUNC0(EINVAL);

    dst = (AVDictionary **)(((uint8_t *)target_obj) + o->offset);
    FUNC2(dst);
    FUNC1(dst, val, 0);

    return 0;
}