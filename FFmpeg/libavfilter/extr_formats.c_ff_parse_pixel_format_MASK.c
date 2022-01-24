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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int AV_PIX_FMT_NONE ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char const*,char**,int /*<<< orphan*/ ) ; 

int FUNC5(enum AVPixelFormat *ret, const char *arg, void *log_ctx)
{
    char *tail;
    int pix_fmt = FUNC1(arg);
    if (pix_fmt == AV_PIX_FMT_NONE) {
        pix_fmt = FUNC4(arg, &tail, 0);
        if (*tail || !FUNC3(pix_fmt)) {
            FUNC2(log_ctx, AV_LOG_ERROR, "Invalid pixel format '%s'\n", arg);
            return FUNC0(EINVAL);
        }
    }
    *ret = pix_fmt;
    return 0;
}