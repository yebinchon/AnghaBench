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
typedef  int /*<<< orphan*/  AVPixFmtDescriptor ;
typedef  int /*<<< orphan*/  AVFilterFormats ;
typedef  int /*<<< orphan*/  AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ **,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC4(AVFilterContext *ctx)
{
    AVFilterFormats *formats = NULL;
    int fmt, ret;

    for (fmt = 0; FUNC0(fmt); fmt++) {
        const AVPixFmtDescriptor *desc = FUNC0(fmt);
        if (FUNC3(desc) && (ret = FUNC1(&formats, fmt)) < 0)
            return ret;
    }

    return FUNC2(ctx, formats);
}