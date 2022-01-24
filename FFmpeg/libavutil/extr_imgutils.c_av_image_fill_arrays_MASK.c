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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ **,int,int,int /*<<< orphan*/ *,int*) ; 

int FUNC4(uint8_t *dst_data[4], int dst_linesize[4],
                         const uint8_t *src, enum AVPixelFormat pix_fmt,
                         int width, int height, int align)
{
    int ret, i;

    ret = FUNC1(width, height, 0, NULL);
    if (ret < 0)
        return ret;

    ret = FUNC2(dst_linesize, pix_fmt, width);
    if (ret < 0)
        return ret;

    for (i = 0; i < 4; i++)
        dst_linesize[i] = FUNC0(dst_linesize[i], align);

    return FUNC3(dst_data, pix_fmt, height, (uint8_t *)src, dst_linesize);
}