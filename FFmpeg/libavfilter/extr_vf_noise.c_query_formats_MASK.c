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
struct TYPE_5__ {int flags; TYPE_1__* comp; } ;
struct TYPE_4__ {int depth; } ;
typedef  TYPE_2__ AVPixFmtDescriptor ;
typedef  int /*<<< orphan*/  AVFilterFormats ;
typedef  int /*<<< orphan*/  AVFilterContext ;

/* Variables and functions */
 int AV_PIX_FMT_FLAG_PLANAR ; 
 TYPE_2__* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ **,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(AVFilterContext *ctx)
{
    AVFilterFormats *formats = NULL;
    int fmt, ret;

    for (fmt = 0; FUNC0(fmt); fmt++) {
        const AVPixFmtDescriptor *desc = FUNC0(fmt);
        if (desc->flags & AV_PIX_FMT_FLAG_PLANAR && !(desc->comp[0].depth & 7)
            && (ret = FUNC1(&formats, fmt)) < 0)
                return ret;
    }

    return FUNC2(ctx, formats);
}