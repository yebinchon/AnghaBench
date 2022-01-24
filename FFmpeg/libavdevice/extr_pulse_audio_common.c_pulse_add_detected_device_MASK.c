#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {void* device_name; void* device_description; } ;
struct TYPE_9__ {int error_code; TYPE_1__* devices; } ;
struct TYPE_8__ {int /*<<< orphan*/  nb_devices; int /*<<< orphan*/  devices; } ;
typedef  TYPE_2__ PulseAudioDeviceList ;
typedef  TYPE_3__ AVDeviceInfo ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (void**) ; 
 TYPE_3__* FUNC4 (int) ; 
 void* FUNC5 (char const*) ; 

__attribute__((used)) static void FUNC6(PulseAudioDeviceList *info,
                                      const char *name, const char *description)
{
    int ret;
    AVDeviceInfo *new_device = NULL;

    if (info->error_code)
        return;

    new_device = FUNC4(sizeof(AVDeviceInfo));
    if (!new_device) {
        info->error_code = FUNC0(ENOMEM);
        return;
    }

    new_device->device_description = FUNC5(description);
    new_device->device_name = FUNC5(name);

    if (!new_device->device_description || !new_device->device_name) {
        info->error_code = FUNC0(ENOMEM);
        goto fail;
    }

    if ((ret = FUNC1(&info->devices->devices,
                                      &info->devices->nb_devices, new_device)) < 0) {
        info->error_code = ret;
        goto fail;
    }
    return;

  fail:
    FUNC3(&new_device->device_description);
    FUNC3(&new_device->device_name);
    FUNC2(new_device);

}