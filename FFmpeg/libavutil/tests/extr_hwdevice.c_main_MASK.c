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
typedef  enum AVHWDeviceType { ____Placeholder_AVHWDeviceType } AVHWDeviceType ;

/* Variables and functions */
 int AV_HWDEVICE_TYPE_NONE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC2 (int) ; 

int FUNC3(void)
{
    enum AVHWDeviceType type = AV_HWDEVICE_TYPE_NONE;
    int pass, fail, skip, err;

    pass = fail = skip = 0;
    while (1) {
        type = FUNC0(type);
        if (type == AV_HWDEVICE_TYPE_NONE)
            break;

        err = FUNC2(type);
        if (err == 0)
            ++pass;
        else if (err < 0)
            ++fail;
        else
            ++skip;
    }

    FUNC1(stderr, "Attempted to test %d device types: "
            "%d passed, %d failed, %d skipped.\n",
            pass + fail + skip, pass, fail, skip);

    return fail > 0;
}