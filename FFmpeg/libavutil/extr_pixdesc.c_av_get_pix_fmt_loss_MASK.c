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
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;

/* Variables and functions */
 int /*<<< orphan*/  FF_LOSS_ALPHA ; 
 int FUNC0 (int,int,int*,int /*<<< orphan*/ ) ; 

int FUNC1(enum AVPixelFormat dst_pix_fmt,
                            enum AVPixelFormat src_pix_fmt,
                            int has_alpha)
{
    int loss;
    int ret = FUNC0(dst_pix_fmt, src_pix_fmt, &loss, has_alpha ? ~0 : ~FF_LOSS_ALPHA);
    if (ret < 0)
        return ret;
    return loss;
}