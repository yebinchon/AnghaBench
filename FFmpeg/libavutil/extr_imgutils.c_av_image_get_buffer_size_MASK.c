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
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_3__ {int flags; } ;
typedef  TYPE_1__ AVPixFmtDescriptor ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC1 (int,int) ; 
 int FF_PSEUDOPAL ; 
 int FUNC2 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int*,int /*<<< orphan*/ *,int,int,int,int) ; 
 TYPE_1__* FUNC4 (int) ; 

int FUNC5(enum AVPixelFormat pix_fmt,
                             int width, int height, int align)
{
    uint8_t *data[4];
    int linesize[4];
    int ret;
    const AVPixFmtDescriptor *desc = FUNC4(pix_fmt);
    if (!desc)
        return FUNC0(EINVAL);

    ret = FUNC2(width, height, 0, NULL);
    if (ret < 0)
        return ret;

    // do not include palette for these pseudo-paletted formats
    if (desc->flags & FF_PSEUDOPAL)
        return FUNC1(width, align) * height;

    return FUNC3(data, linesize, NULL, pix_fmt,
                                width, height, align);
}