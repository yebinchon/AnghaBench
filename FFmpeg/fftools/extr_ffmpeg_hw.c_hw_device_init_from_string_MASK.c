#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVHWDeviceType { ____Placeholder_AVHWDeviceType } AVHWDeviceType ;
struct TYPE_5__ {char const* name; int type; int /*<<< orphan*/ * device_ref; } ;
typedef  TYPE_1__ HWDevice ;
typedef  int /*<<< orphan*/  AVDictionary ;
typedef  int /*<<< orphan*/  AVBufferRef ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AV_HWDEVICE_TYPE_NONE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ **,char const*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const**) ; 
 int FUNC5 (int /*<<< orphan*/ **,int,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ **,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC9 (char const*,int) ; 
 TYPE_1__* FUNC10 () ; 
 char* FUNC11 (int) ; 
 TYPE_1__* FUNC12 (char const*) ; 
 char* FUNC13 (char const*,char) ; 
 size_t FUNC14 (char const*,char*) ; 

int FUNC15(const char *arg, HWDevice **dev_out)
{
    // "type=name:device,key=value,key2=value2"
    // "type:device,key=value,key2=value2"
    // -> av_hwdevice_ctx_create()
    // "type=name@name"
    // "type@name"
    // -> av_hwdevice_ctx_create_derived()

    AVDictionary *options = NULL;
    const char *type_name = NULL, *name = NULL, *device = NULL;
    enum AVHWDeviceType type;
    HWDevice *dev, *src;
    AVBufferRef *device_ref = NULL;
    int err;
    const char *errmsg, *p, *q;
    size_t k;

    k = FUNC14(arg, ":=@");
    p = arg + k;

    type_name = FUNC9(arg, k);
    if (!type_name) {
        err = FUNC0(ENOMEM);
        goto fail;
    }
    type = FUNC7(type_name);
    if (type == AV_HWDEVICE_TYPE_NONE) {
        errmsg = "unknown device type";
        goto invalid;
    }

    if (*p == '=') {
        k = FUNC14(p + 1, ":@");

        name = FUNC9(p + 1, k);
        if (!name) {
            err = FUNC0(ENOMEM);
            goto fail;
        }
        if (FUNC12(name)) {
            errmsg = "named device already exists";
            goto invalid;
        }

        p += 1 + k;
    } else {
        name = FUNC11(type);
        if (!name) {
            err = FUNC0(ENOMEM);
            goto fail;
        }
    }

    if (!*p) {
        // New device with no parameters.
        err = FUNC5(&device_ref, type,
                                     NULL, NULL, 0);
        if (err < 0)
            goto fail;

    } else if (*p == ':') {
        // New device with some parameters.
        ++p;
        q = FUNC13(p, ',');
        if (q) {
            if (q - p > 0) {
                device = FUNC9(p, q - p);
                if (!device) {
                    err = FUNC0(ENOMEM);
                    goto fail;
                }
            }
            err = FUNC3(&options, q + 1, "=", ",", 0);
            if (err < 0) {
                errmsg = "failed to parse options";
                goto invalid;
            }
        }

        err = FUNC5(&device_ref, type,
                                     q ? device : p[0] ? p : NULL,
                                     options, 0);
        if (err < 0)
            goto fail;

    } else if (*p == '@') {
        // Derive from existing device.

        src = FUNC12(p + 1);
        if (!src) {
            errmsg = "invalid source device name";
            goto invalid;
        }

        err = FUNC6(&device_ref, type,
                                             src->device_ref, 0);
        if (err < 0)
            goto fail;
    } else {
        errmsg = "parse error";
        goto invalid;
    }

    dev = FUNC10();
    if (!dev) {
        err = FUNC0(ENOMEM);
        goto fail;
    }

    dev->name = name;
    dev->type = type;
    dev->device_ref = device_ref;

    if (dev_out)
        *dev_out = dev;

    name = NULL;
    err = 0;
done:
    FUNC4(&type_name);
    FUNC4(&name);
    FUNC4(&device);
    FUNC2(&options);
    return err;
invalid:
    FUNC8(NULL, AV_LOG_ERROR,
           "Invalid device specification \"%s\": %s\n", arg, errmsg);
    err = FUNC0(EINVAL);
    goto done;
fail:
    FUNC8(NULL, AV_LOG_ERROR,
           "Device creation failed: %d.\n", err);
    FUNC1(&device_ref);
    goto done;
}