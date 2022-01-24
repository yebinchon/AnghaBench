#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVHWDeviceType { ____Placeholder_AVHWDeviceType } AVHWDeviceType ;
struct TYPE_13__ {scalar_t__ data; } ;
struct TYPE_12__ {TYPE_2__* internal; } ;
struct TYPE_11__ {TYPE_1__* hw_type; } ;
struct TYPE_10__ {int (* device_create ) (TYPE_3__*,char const*,int /*<<< orphan*/ *,int) ;} ;
typedef  TYPE_3__ AVHWDeviceContext ;
typedef  int /*<<< orphan*/  AVDictionary ;
typedef  TYPE_4__ AVBufferRef ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__**) ; 
 TYPE_4__* FUNC2 (int) ; 
 int FUNC3 (TYPE_4__*) ; 
 int FUNC4 (TYPE_3__*,char const*,int /*<<< orphan*/ *,int) ; 

int FUNC5(AVBufferRef **pdevice_ref, enum AVHWDeviceType type,
                           const char *device, AVDictionary *opts, int flags)
{
    AVBufferRef *device_ref = NULL;
    AVHWDeviceContext *device_ctx;
    int ret = 0;

    device_ref = FUNC2(type);
    if (!device_ref) {
        ret = FUNC0(ENOMEM);
        goto fail;
    }
    device_ctx = (AVHWDeviceContext*)device_ref->data;

    if (!device_ctx->internal->hw_type->device_create) {
        ret = FUNC0(ENOSYS);
        goto fail;
    }

    ret = device_ctx->internal->hw_type->device_create(device_ctx, device,
                                                       opts, flags);
    if (ret < 0)
        goto fail;

    ret = FUNC3(device_ref);
    if (ret < 0)
        goto fail;

    *pdevice_ref = device_ref;
    return 0;
fail:
    FUNC1(&device_ref);
    *pdevice_ref = NULL;
    return ret;
}