#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mfxIMPL ;
typedef  enum AVHWDeviceType { ____Placeholder_AVHWDeviceType } AVHWDeviceType ;
struct TYPE_14__ {scalar_t__ data; } ;
struct TYPE_13__ {int /*<<< orphan*/ * value; } ;
struct TYPE_12__ {int /*<<< orphan*/  free; TYPE_1__* user_opaque; } ;
struct TYPE_11__ {TYPE_9__* child_device_ctx; } ;
typedef  TYPE_1__ QSVDevicePriv ;
typedef  TYPE_2__ AVHWDeviceContext ;
typedef  TYPE_3__ AVDictionaryEntry ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AV_HWDEVICE_TYPE_DXVA2 ; 
 int AV_HWDEVICE_TYPE_VAAPI ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ CONFIG_DXVA2 ; 
 scalar_t__ CONFIG_VAAPI ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_9__**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qsv_device_free ; 

__attribute__((used)) static int FUNC9(AVHWDeviceContext *ctx, const char *device,
                             AVDictionary *opts, int flags)
{
    QSVDevicePriv *priv;
    enum AVHWDeviceType child_device_type;
    AVHWDeviceContext *child_device;
    AVDictionary *child_device_opts;
    AVDictionaryEntry *e;

    mfxIMPL impl;
    int ret;

    priv = FUNC6(sizeof(*priv));
    if (!priv)
        return FUNC0(ENOMEM);

    ctx->user_opaque = priv;
    ctx->free        = qsv_device_free;

    e = FUNC2(opts, "child_device", NULL, 0);

    child_device_opts = NULL;
    if (CONFIG_VAAPI) {
        child_device_type = AV_HWDEVICE_TYPE_VAAPI;
        // libmfx does not actually implement VAAPI properly, rather it
        // depends on the specific behaviour of a matching iHD driver when
        // used on recent Intel hardware.  Set options to the VAAPI device
        // creation so that we should pick a usable setup by default if
        // possible, even when multiple devices and drivers are available.
        FUNC3(&child_device_opts, "kernel_driver", "i915", 0);
        FUNC3(&child_device_opts, "driver",        "iHD",  0);
    } else if (CONFIG_DXVA2)
        child_device_type = AV_HWDEVICE_TYPE_DXVA2;
    else {
        FUNC5(ctx, AV_LOG_ERROR, "No supported child device type is enabled\n");
        return FUNC0(ENOSYS);
    }

    ret = FUNC4(&priv->child_device_ctx, child_device_type,
                                 e ? e->value : NULL, child_device_opts, 0);

    FUNC1(&child_device_opts);
    if (ret < 0)
        return ret;

    child_device = (AVHWDeviceContext*)priv->child_device_ctx->data;

    impl = FUNC7(device);

    return FUNC8(ctx, impl, child_device, 0);
}