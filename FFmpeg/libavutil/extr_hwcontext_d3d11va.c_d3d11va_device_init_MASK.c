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
struct TYPE_5__ {scalar_t__ lock_ctx; int /*<<< orphan*/  video_context; int /*<<< orphan*/  device_context; int /*<<< orphan*/  video_device; int /*<<< orphan*/  device; int /*<<< orphan*/  unlock; scalar_t__ lock; } ;
struct TYPE_4__ {TYPE_2__* hwctx; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ AVHWDeviceContext ;
typedef  TYPE_2__ AVD3D11VADeviceContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_UNKNOWN ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_ID3D11VideoContext ; 
 int /*<<< orphan*/  IID_ID3D11VideoDevice ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ d3d11va_default_lock ; 
 int /*<<< orphan*/  d3d11va_default_unlock ; 

__attribute__((used)) static int FUNC6(AVHWDeviceContext *hwdev)
{
    AVD3D11VADeviceContext *device_hwctx = hwdev->hwctx;
    HRESULT hr;

    if (!device_hwctx->lock) {
        device_hwctx->lock_ctx = FUNC1(NULL, 0, NULL);
        if (device_hwctx->lock_ctx == INVALID_HANDLE_VALUE) {
            FUNC5(NULL, AV_LOG_ERROR, "Failed to create a mutex\n");
            return FUNC0(EINVAL);
        }
        device_hwctx->lock   = d3d11va_default_lock;
        device_hwctx->unlock = d3d11va_default_unlock;
    }

    if (!device_hwctx->device_context) {
        FUNC4(device_hwctx->device, &device_hwctx->device_context);
        if (!device_hwctx->device_context)
            return AVERROR_UNKNOWN;
    }

    if (!device_hwctx->video_device) {
        hr = FUNC3(device_hwctx->device, &IID_ID3D11VideoDevice,
                                                (void **)&device_hwctx->video_device);
        if (FUNC2(hr))
            return AVERROR_UNKNOWN;
    }

    if (!device_hwctx->video_context) {
        hr = FUNC3(device_hwctx->device_context, &IID_ID3D11VideoContext,
                                                (void **)&device_hwctx->video_context);
        if (FUNC2(hr))
            return AVERROR_UNKNOWN;
    }

    return 0;
}