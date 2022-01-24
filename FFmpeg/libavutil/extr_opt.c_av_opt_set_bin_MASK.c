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
struct TYPE_3__ {scalar_t__ type; int flags; int offset; } ;
typedef  TYPE_1__ AVOption ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_OPTION_NOT_FOUND ; 
 int AV_OPT_FLAG_READONLY ; 
 scalar_t__ AV_OPT_TYPE_BINARY ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 TYPE_1__* FUNC3 (void*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

int FUNC5(void *obj, const char *name, const uint8_t *val, int len, int search_flags)
{
    void *target_obj;
    const AVOption *o = FUNC3(obj, name, NULL, 0, search_flags, &target_obj);
    uint8_t *ptr;
    uint8_t **dst;
    int *lendst;

    if (!o || !target_obj)
        return AVERROR_OPTION_NOT_FOUND;

    if (o->type != AV_OPT_TYPE_BINARY || o->flags & AV_OPT_FLAG_READONLY)
        return FUNC0(EINVAL);

    ptr = len ? FUNC2(len) : NULL;
    if (len && !ptr)
        return FUNC0(ENOMEM);

    dst    = (uint8_t **)(((uint8_t *)target_obj) + o->offset);
    lendst = (int *)(dst + 1);

    FUNC1(*dst);
    *dst    = ptr;
    *lendst = len;
    if (len)
        FUNC4(ptr, val, len);

    return 0;
}