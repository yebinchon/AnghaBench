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
struct TYPE_3__ {scalar_t__ type; int offset; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ AVOption ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_OPTION_NOT_FOUND ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ AV_OPT_TYPE_IMAGE_SIZE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,char*,int,...) ; 
 TYPE_1__* FUNC2 (void*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,void**) ; 

int FUNC3(void *obj, const char *name, int w, int h, int search_flags)
{
    void *target_obj;
    const AVOption *o = FUNC2(obj, name, NULL, 0, search_flags, &target_obj);

    if (!o || !target_obj)
        return AVERROR_OPTION_NOT_FOUND;
    if (o->type != AV_OPT_TYPE_IMAGE_SIZE) {
        FUNC1(obj, AV_LOG_ERROR,
               "The value set by option '%s' is not an image size.\n", o->name);
        return FUNC0(EINVAL);
    }
    if (w<0 || h<0) {
        FUNC1(obj, AV_LOG_ERROR,
               "Invalid negative size value %dx%d for size '%s'\n", w, h, o->name);
        return FUNC0(EINVAL);
    }
    *(int *)(((uint8_t *)target_obj)             + o->offset) = w;
    *(int *)(((uint8_t *)target_obj+sizeof(int)) + o->offset) = h;
    return 0;
}