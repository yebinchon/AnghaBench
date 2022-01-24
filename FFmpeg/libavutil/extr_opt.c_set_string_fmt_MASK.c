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
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;
typedef  TYPE_1__ AVOption ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ERANGE ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 int FUNC5 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void *obj, const AVOption *o, const char *val, uint8_t *dst,
                          int fmt_nb, int ((*get_fmt)(const char *)), const char *desc)
{
    int fmt, min, max;

    if (!val || !FUNC4(val, "none")) {
        fmt = -1;
    } else {
        fmt = get_fmt(val);
        if (fmt == -1) {
            char *tail;
            fmt = FUNC5(val, &tail, 0);
            if (*tail || (unsigned)fmt >= fmt_nb) {
                FUNC3(obj, AV_LOG_ERROR,
                       "Unable to parse option value \"%s\" as %s\n", val, desc);
                return FUNC0(EINVAL);
            }
        }
    }

    min = FUNC1(o->min, -1);
    max = FUNC2(o->max, fmt_nb-1);

    // hack for compatibility with old ffmpeg
    if(min == 0 && max == 0) {
        min = -1;
        max = fmt_nb-1;
    }

    if (fmt < min || fmt > max) {
        FUNC3(obj, AV_LOG_ERROR,
               "Value %d for parameter '%s' out of %s format range [%d - %d]\n",
               fmt, o->name, desc, min, max);
        return FUNC0(ERANGE);
    }

    *(int *)dst = fmt;
    return 0;
}