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
typedef  enum AVHWDeviceType { ____Placeholder_AVHWDeviceType } AVHWDeviceType ;
struct TYPE_3__ {int type; char** possible_devices; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (char const*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC4 (int,char const*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* test_devices ; 

__attribute__((used)) static int FUNC5(enum AVHWDeviceType type)
{
    enum AVHWDeviceType check;
    const char *name;
    int i, j, found, err;

    name = FUNC2(type);
    if (!name) {
        FUNC3(stderr, "No name available for device type %d.\n", type);
        return -1;
    }

    check = FUNC1(name);
    if (check != type) {
        FUNC3(stderr, "Type %d maps to name %s maps to type %d.\n",
               type, name, check);
        return -1;
    }

    found = 0;

    err = FUNC4(type, name, NULL, NULL, 0);
    if (err < 0) {
        FUNC3(stderr, "Test failed for %s with default options.\n", name);
        return -1;
    }
    if (err == 0) {
        FUNC3(stderr, "Test passed for %s with default options.\n", name);
        ++found;
    }

    for (i = 0; i < FUNC0(test_devices); i++) {
        if (test_devices[i].type != type)
            continue;

        for (j = 0; test_devices[i].possible_devices[j]; j++) {
            err = FUNC4(type, name,
                              test_devices[i].possible_devices[j],
                              NULL, 0);
            if (err < 0) {
                FUNC3(stderr, "Test failed for %s with device %s.\n",
                       name, test_devices[i].possible_devices[j]);
                return -1;
            }
            if (err == 0) {
                FUNC3(stderr, "Test passed for %s with device %s.\n",
                        name, test_devices[i].possible_devices[j]);
                ++found;
            }
        }
    }

    return !found;
}