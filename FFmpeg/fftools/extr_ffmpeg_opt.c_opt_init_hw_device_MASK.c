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
 char* FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 

__attribute__((used)) static int FUNC6(void *optctx, const char *opt, const char *arg)
{
    if (!FUNC5(arg, "list")) {
        enum AVHWDeviceType type = AV_HWDEVICE_TYPE_NONE;
        FUNC4("Supported hardware device types:\n");
        while ((type = FUNC1(type)) !=
               AV_HWDEVICE_TYPE_NONE)
            FUNC4("%s\n", FUNC0(type));
        FUNC4("\n");
        FUNC2(0);
    } else {
        return FUNC3(arg, NULL);
    }
}