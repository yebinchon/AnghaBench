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
struct TYPE_5__ {int /*<<< orphan*/ * lock; int /*<<< orphan*/  lock_ctx; int /*<<< orphan*/ * video_context; int /*<<< orphan*/ * video_device; int /*<<< orphan*/ * device_context; int /*<<< orphan*/ * device; } ;
struct TYPE_4__ {TYPE_2__* hwctx; } ;
typedef  TYPE_1__ AVHWDeviceContext ;
typedef  TYPE_2__ AVD3D11VADeviceContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/ * d3d11va_default_lock ; 

__attribute__((used)) static void FUNC5(AVHWDeviceContext *hwdev)
{
    AVD3D11VADeviceContext *device_hwctx = hwdev->hwctx;

    if (device_hwctx->device) {
        FUNC2(device_hwctx->device);
        device_hwctx->device = NULL;
    }

    if (device_hwctx->device_context) {
        FUNC1(device_hwctx->device_context);
        device_hwctx->device_context = NULL;
    }

    if (device_hwctx->video_device) {
        FUNC4(device_hwctx->video_device);
        device_hwctx->video_device = NULL;
    }

    if (device_hwctx->video_context) {
        FUNC3(device_hwctx->video_context);
        device_hwctx->video_context = NULL;
    }

    if (device_hwctx->lock == d3d11va_default_lock) {
        FUNC0(device_hwctx->lock_ctx);
        device_hwctx->lock_ctx = INVALID_HANDLE_VALUE;
        device_hwctx->lock = NULL;
    }
}