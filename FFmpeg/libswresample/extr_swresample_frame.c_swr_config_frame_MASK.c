#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  format; int /*<<< orphan*/  channel_layout; } ;
typedef  int /*<<< orphan*/  SwrContext ;
typedef  TYPE_1__ AVFrame ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(SwrContext *s, const AVFrame *out, const AVFrame *in)
{
    FUNC3(s);

    if (in) {
        if (FUNC2(s, "icl", in->channel_layout, 0) < 0)
            goto fail;
        if (FUNC2(s, "isf", in->format, 0) < 0)
            goto fail;
        if (FUNC2(s, "isr", in->sample_rate, 0) < 0)
            goto fail;
    }

    if (out) {
        if (FUNC2(s, "ocl", out->channel_layout, 0) < 0)
            goto fail;
        if (FUNC2(s, "osf", out->format,  0) < 0)
            goto fail;
        if (FUNC2(s, "osr", out->sample_rate, 0) < 0)
            goto fail;
    }

    return 0;
fail:
    FUNC1(s, AV_LOG_ERROR, "Failed to set option\n");
    return FUNC0(EINVAL);
}