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
typedef  enum AVHWDeviceType { ____Placeholder_AVHWDeviceType } AVHWDeviceType ;
struct TYPE_4__ {char* name; int type; int /*<<< orphan*/ * device_ref; } ;
typedef  TYPE_1__ HWDevice ;
typedef  int /*<<< orphan*/  AVBufferRef ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 int FUNC3 (int /*<<< orphan*/ **,int,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__* FUNC5 () ; 
 char* FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(enum AVHWDeviceType type,
                                    const char *device,
                                    HWDevice **dev_out)
{
    AVBufferRef *device_ref = NULL;
    HWDevice *dev;
    char *name;
    int err;

    name = FUNC6(type);
    if (!name) {
        err = FUNC0(ENOMEM);
        goto fail;
    }

    err = FUNC3(&device_ref, type, device, NULL, 0);
    if (err < 0) {
        FUNC4(NULL, AV_LOG_ERROR,
               "Device creation failed: %d.\n", err);
        goto fail;
    }

    dev = FUNC5();
    if (!dev) {
        err = FUNC0(ENOMEM);
        goto fail;
    }

    dev->name = name;
    dev->type = type;
    dev->device_ref = device_ref;

    if (dev_out)
        *dev_out = dev;

    return 0;

fail:
    FUNC2(&name);
    FUNC1(&device_ref);
    return err;
}