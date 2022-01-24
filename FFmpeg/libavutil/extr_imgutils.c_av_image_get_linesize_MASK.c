#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_5__ {int flags; } ;
typedef  TYPE_1__ AVPixFmtDescriptor ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AV_PIX_FMT_FLAG_HWACCEL ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,TYPE_1__ const*) ; 
 TYPE_1__* FUNC2 (int) ; 
 int FUNC3 (int,int,int,int,TYPE_1__ const*) ; 

int FUNC4(enum AVPixelFormat pix_fmt, int width, int plane)
{
    const AVPixFmtDescriptor *desc = FUNC2(pix_fmt);
    int max_step     [4];       /* max pixel step for each plane */
    int max_step_comp[4];       /* the component for each plane which has the max pixel step */

    if (!desc || desc->flags & AV_PIX_FMT_FLAG_HWACCEL)
        return FUNC0(EINVAL);

    FUNC1(max_step, max_step_comp, desc);
    return FUNC3(width, plane, max_step[plane], max_step_comp[plane], desc);
}