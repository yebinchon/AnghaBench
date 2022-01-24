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
typedef  int /*<<< orphan*/  FFDrawContext ;
typedef  int /*<<< orphan*/  AVFilterFormats ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ **,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,unsigned int) ; 

AVFilterFormats *FUNC3(unsigned flags)
{
    enum AVPixelFormat i;
    FFDrawContext draw;
    AVFilterFormats *fmts = NULL;
    int ret;

    for (i = 0; FUNC0(i); i++)
        if (FUNC2(&draw, i, flags) >= 0 &&
            (ret = FUNC1(&fmts, i)) < 0)
            return NULL;
    return fmts;
}