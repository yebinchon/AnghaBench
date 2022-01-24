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
struct TYPE_3__ {int platform_index; int device_index; int /*<<< orphan*/ * filter_device; int /*<<< orphan*/ * enumerate_devices; int /*<<< orphan*/ * filter_platform; int /*<<< orphan*/ * enumerate_platforms; int /*<<< orphan*/ * context; } ;
typedef  TYPE_1__ OpenCLDeviceSelector ;
typedef  int /*<<< orphan*/  AVHWDeviceContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  opencl_enumerate_devices ; 
 int /*<<< orphan*/  opencl_enumerate_platforms ; 
 int /*<<< orphan*/  opencl_filter_device ; 
 int /*<<< orphan*/  opencl_filter_platform ; 
 int FUNC3 (char const*,char*,int*,...) ; 

__attribute__((used)) static int FUNC4(AVHWDeviceContext *hwdev, const char *device,
                                AVDictionary *opts, int flags)
{
    OpenCLDeviceSelector selector = {
        .context = opts,
        .enumerate_platforms = &opencl_enumerate_platforms,
        .filter_platform     = &opencl_filter_platform,
        .enumerate_devices   = &opencl_enumerate_devices,
        .filter_device       = &opencl_filter_device,
    };

    if (device && device[0]) {
        // Match one or both indices for platform and device.
        int d = -1, p = -1, ret;
        if (device[0] == '.')
            ret = FUNC3(device, ".%d", &d);
        else
            ret = FUNC3(device, "%d.%d", &p, &d);
        if (ret < 1) {
            FUNC1(hwdev, AV_LOG_ERROR, "Invalid OpenCL platform/device "
                   "index specification \"%s\".\n", device);
            return FUNC0(EINVAL);
        }
        selector.platform_index = p;
        selector.device_index   = d;
    } else {
        selector.platform_index = -1;
        selector.device_index   = -1;
    }

    return FUNC2(hwdev, &selector, NULL);
}