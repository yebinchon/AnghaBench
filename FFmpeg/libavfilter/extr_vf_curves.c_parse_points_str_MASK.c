#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct keypoint {int x; int y; struct keypoint* next; } ;
typedef  int /*<<< orphan*/  AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int const,int,...) ; 
 void* FUNC2 (char*,char**) ; 
 struct keypoint* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(AVFilterContext *ctx, struct keypoint **points, const char *s,
                            int lut_size)
{
    char *p = (char *)s; // strtod won't alter the string
    struct keypoint *last = NULL;
    const int scale = lut_size - 1;

    /* construct a linked list based on the key points string */
    while (p && *p) {
        struct keypoint *point = FUNC3(0, 0, NULL);
        if (!point)
            return FUNC0(ENOMEM);
        point->x = FUNC2(p, &p); if (p && *p) p++;
        point->y = FUNC2(p, &p); if (p && *p) p++;
        if (point->x < 0 || point->x > 1 || point->y < 0 || point->y > 1) {
            FUNC1(ctx, AV_LOG_ERROR, "Invalid key point coordinates (%f;%f), "
                   "x and y must be in the [0;1] range.\n", point->x, point->y);
            return FUNC0(EINVAL);
        }
        if (!*points)
            *points = point;
        if (last) {
            if ((int)(last->x * scale) >= (int)(point->x * scale)) {
                FUNC1(ctx, AV_LOG_ERROR, "Key point coordinates (%f;%f) "
                       "and (%f;%f) are too close from each other or not "
                       "strictly increasing on the x-axis\n",
                       last->x, last->y, point->x, point->y);
                return FUNC0(EINVAL);
            }
            last->next = point;
        }
        last = point;
    }

    if (*points && !(*points)->next) {
        FUNC1(ctx, AV_LOG_WARNING, "Only one point (at (%f;%f)) is defined, "
               "this is unlikely to behave as you expect. You probably want"
               "at least 2 points.",
               (*points)->x, (*points)->y);
    }

    return 0;
}