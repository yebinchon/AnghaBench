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
typedef  scalar_t__ cl_uint ;
typedef  int /*<<< orphan*/  cl_platform_id ;
typedef  scalar_t__ cl_int ;
typedef  int /*<<< orphan*/  AVHWDeviceContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ CL_SUCCESS ; 
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__,int) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ *,scalar_t__*) ; 

__attribute__((used)) static int FUNC5(AVHWDeviceContext *hwdev,
                                      cl_uint *nb_platforms,
                                      cl_platform_id **platforms,
                                      void *context)
{
    cl_int cle;

    cle = FUNC4(0, NULL, nb_platforms);
    if (cle != CL_SUCCESS) {
        FUNC2(hwdev, AV_LOG_ERROR, "Failed to get number of "
               "OpenCL platforms: %d.\n", cle);
        return FUNC0(ENODEV);
    }
    FUNC2(hwdev, AV_LOG_DEBUG, "%u OpenCL platforms found.\n",
           *nb_platforms);

    *platforms = FUNC3(*nb_platforms, sizeof(**platforms));
    if (!*platforms)
        return FUNC0(ENOMEM);

    cle = FUNC4(*nb_platforms, *platforms, NULL);
    if (cle != CL_SUCCESS) {
        FUNC2(hwdev, AV_LOG_ERROR, "Failed to get list of OpenCL "
               "platforms: %d.\n", cle);
        FUNC1(platforms);
        return FUNC0(ENODEV);
    }

    return 0;
}