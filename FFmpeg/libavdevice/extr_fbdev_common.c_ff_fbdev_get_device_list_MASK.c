#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct fb_var_screeninfo {char* id; } ;
struct fb_fix_screeninfo {char* id; } ;
typedef  int /*<<< orphan*/  device_file ;
struct TYPE_9__ {struct TYPE_9__* device_description; struct TYPE_9__* device_name; } ;
struct TYPE_8__ {scalar_t__ nb_devices; scalar_t__ default_device; int /*<<< orphan*/  devices; } ;
typedef  TYPE_1__ AVDeviceInfoList ;
typedef  TYPE_2__ AVDeviceInfo ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FBIOGET_FSCREENINFO ; 
 int /*<<< orphan*/  FBIOGET_VSCREENINFO ; 
 int /*<<< orphan*/  O_RDWR ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int) ; 
 void* FUNC6 (char*) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC9 () ; 
 int FUNC10 (int,int /*<<< orphan*/ ,struct fb_var_screeninfo*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,char const*) ; 

int FUNC13(AVDeviceInfoList *device_list)
{
    struct fb_var_screeninfo varinfo;
    struct fb_fix_screeninfo fixinfo;
    char device_file[12];
    AVDeviceInfo *device = NULL;
    int i, fd, ret = 0;
    const char *default_device = FUNC9();

    if (!device_list)
        return FUNC0(EINVAL);

    for (i = 0; i <= 31; i++) {
        FUNC11(device_file, sizeof(device_file), "/dev/fb%d", i);

        if ((fd = FUNC7(device_file, O_RDWR)) < 0) {
            int err = FUNC0(errno);
            if (err != FUNC0(ENOENT))
                FUNC4(NULL, AV_LOG_ERROR, "Could not open framebuffer device '%s': %s\n",
                       device_file, FUNC2(err));
            continue;
        }
        if (FUNC10(fd, FBIOGET_VSCREENINFO, &varinfo) == -1)
            goto fail_device;
        if (FUNC10(fd, FBIOGET_FSCREENINFO, &fixinfo) == -1)
            goto fail_device;

        device = FUNC5(sizeof(AVDeviceInfo));
        if (!device) {
            ret = FUNC0(ENOMEM);
            goto fail_device;
        }
        device->device_name = FUNC6(device_file);
        device->device_description = FUNC6(fixinfo.id);
        if (!device->device_name || !device->device_description) {
            ret = FUNC0(ENOMEM);
            goto fail_device;
        }

        if ((ret = FUNC1(&device_list->devices,
                                          &device_list->nb_devices, device)) < 0)
            goto fail_device;

        if (default_device && !FUNC12(device->device_name, default_device)) {
            device_list->default_device = device_list->nb_devices - 1;
            default_device = NULL;
        }
        FUNC8(fd);
        continue;

      fail_device:
        if (device) {
            FUNC3(&device->device_name);
            FUNC3(&device->device_description);
            FUNC3(&device);
        }
        if (fd >= 0)
            FUNC8(fd);
        if (ret < 0)
            return ret;
    }
    return 0;
}