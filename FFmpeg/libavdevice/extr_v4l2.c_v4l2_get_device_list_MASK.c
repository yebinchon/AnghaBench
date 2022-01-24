#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct video_data {int fd; } ;
struct v4l2_capability {char* card; } ;
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  device_name ;
struct TYPE_13__ {struct TYPE_13__* device_description; struct TYPE_13__* device_name; } ;
struct TYPE_12__ {int /*<<< orphan*/  nb_devices; int /*<<< orphan*/  devices; } ;
struct TYPE_11__ {struct video_data* priv_data; } ;
typedef  int /*<<< orphan*/  DIR ;
typedef  TYPE_1__ AVFormatContext ;
typedef  TYPE_2__ AVDeviceInfoList ;
typedef  TYPE_3__ AVDeviceInfo ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  VIDIOC_QUERYCAP ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (int) ; 
 void* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * FUNC9 (char*) ; 
 struct dirent* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 scalar_t__ FUNC13 (int,int /*<<< orphan*/ ,struct v4l2_capability*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static int FUNC15(AVFormatContext *ctx, AVDeviceInfoList *device_list)
{
    struct video_data *s = ctx->priv_data;
    DIR *dir;
    struct dirent *entry;
    AVDeviceInfo *device = NULL;
    struct v4l2_capability cap;
    int ret = 0;

    if (!device_list)
        return FUNC0(EINVAL);

    dir = FUNC9("/dev");
    if (!dir) {
        ret = FUNC0(errno);
        FUNC4(ctx, AV_LOG_ERROR, "Couldn't open the directory: %s\n", FUNC2(ret));
        return ret;
    }
    while ((entry = FUNC10(dir))) {
        char device_name[256];

        if (!FUNC14(entry->d_name))
            continue;

        FUNC11(device_name, sizeof(device_name), "/dev/%s", entry->d_name);
        if ((s->fd = FUNC8(ctx, device_name)) < 0)
            continue;

        if (FUNC13(s->fd, VIDIOC_QUERYCAP, &cap) < 0) {
            ret = FUNC0(errno);
            FUNC4(ctx, AV_LOG_ERROR, "ioctl(VIDIOC_QUERYCAP): %s\n", FUNC2(ret));
            goto fail;
        }

        device = FUNC5(sizeof(AVDeviceInfo));
        if (!device) {
            ret = FUNC0(ENOMEM);
            goto fail;
        }
        device->device_name = FUNC6(device_name);
        device->device_description = FUNC6(cap.card);
        if (!device->device_name || !device->device_description) {
            ret = FUNC0(ENOMEM);
            goto fail;
        }

        if ((ret = FUNC1(&device_list->devices,
                                          &device_list->nb_devices, device)) < 0)
            goto fail;

        FUNC12(s->fd);
        s->fd = -1;
        continue;

      fail:
        if (device) {
            FUNC3(&device->device_name);
            FUNC3(&device->device_description);
            FUNC3(&device);
        }
        if (s->fd >= 0)
            FUNC12(s->fd);
        s->fd = -1;
        break;
    }
    FUNC7(dir);
    return ret;
}