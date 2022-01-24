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
struct TYPE_3__ {int w; int h; int /*<<< orphan*/ * dst; } ;
typedef  TYPE_1__ AVFilterLink ;
typedef  int /*<<< orphan*/  AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVPALETTE_COUNT ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int,int,int) ; 

__attribute__((used)) static int FUNC2(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;

    if (inlink->w * inlink->h != AVPALETTE_COUNT) {
        FUNC1(ctx, AV_LOG_ERROR,
               "Palette input must contain exactly %d pixels. "
               "Specified input has %dx%d=%d pixels\n",
               AVPALETTE_COUNT, inlink->w, inlink->h,
               inlink->w * inlink->h);
        return FUNC0(EINVAL);
    }
    return 0;
}