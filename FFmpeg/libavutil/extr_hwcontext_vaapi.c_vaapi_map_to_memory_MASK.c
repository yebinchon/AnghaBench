#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ format; } ;
struct TYPE_11__ {int /*<<< orphan*/  device_ctx; } ;
typedef  TYPE_1__ AVHWFramesContext ;
typedef  TYPE_2__ AVFrame ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AV_PIX_FMT_NONE ; 
 int /*<<< orphan*/  ENOSYS ; 
 int FUNC1 (TYPE_2__*,TYPE_2__ const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,TYPE_2__*,TYPE_2__ const*,int) ; 

__attribute__((used)) static int FUNC4(AVHWFramesContext *hwfc, AVFrame *dst,
                               const AVFrame *src, int flags)
{
    int err;

    if (dst->format != AV_PIX_FMT_NONE) {
        err = FUNC2(hwfc->device_ctx, dst->format, NULL);
        if (err < 0)
            return FUNC0(ENOSYS);
    }

    err = FUNC3(hwfc, dst, src, flags);
    if (err)
        return err;

    err = FUNC1(dst, src);
    if (err)
        return err;

    return 0;
}