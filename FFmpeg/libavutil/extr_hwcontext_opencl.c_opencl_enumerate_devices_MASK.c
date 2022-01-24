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
typedef  char const* cl_uint ;
typedef  int /*<<< orphan*/  cl_platform_id ;
typedef  char const* cl_int ;
typedef  int /*<<< orphan*/  cl_device_id ;
typedef  int /*<<< orphan*/  AVHWDeviceContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 char const* CL_DEVICE_NOT_FOUND ; 
 int /*<<< orphan*/  CL_DEVICE_TYPE_ALL ; 
 char const* CL_SUCCESS ; 
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,int) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,char const**) ; 

__attribute__((used)) static int FUNC5(AVHWDeviceContext *hwdev,
                                    cl_platform_id platform_id,
                                    const char *platform_name,
                                    cl_uint *nb_devices,
                                    cl_device_id **devices,
                                    void *context)
{
    cl_int cle;

    cle = FUNC4(platform_id, CL_DEVICE_TYPE_ALL,
                         0, NULL, nb_devices);
    if (cle == CL_DEVICE_NOT_FOUND) {
        FUNC2(hwdev, AV_LOG_DEBUG, "No devices found "
               "on platform \"%s\".\n", platform_name);
        *nb_devices = 0;
        return 0;
    } else if (cle != CL_SUCCESS) {
        FUNC2(hwdev, AV_LOG_ERROR, "Failed to get number of devices "
               "on platform \"%s\": %d.\n", platform_name, cle);
        return FUNC0(ENODEV);
    }
    FUNC2(hwdev, AV_LOG_DEBUG, "%u OpenCL devices found on "
           "platform \"%s\".\n", *nb_devices, platform_name);

    *devices = FUNC3(*nb_devices, sizeof(**devices));
    if (!*devices)
        return FUNC0(ENOMEM);

    cle = FUNC4(platform_id, CL_DEVICE_TYPE_ALL,
                         *nb_devices, *devices, NULL);
    if (cle != CL_SUCCESS) {
        FUNC2(hwdev, AV_LOG_ERROR, "Failed to get list of devices "
               "on platform \"%s\": %d.\n", platform_name, cle);
        FUNC1(devices);
        return FUNC0(ENODEV);
    }

    return 0;
}