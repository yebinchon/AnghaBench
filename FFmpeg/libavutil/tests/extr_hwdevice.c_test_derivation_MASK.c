#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVHWDeviceType { ____Placeholder_AVHWDeviceType } AVHWDeviceType ;
struct TYPE_8__ {scalar_t__ data; } ;
struct TYPE_7__ {int type; } ;
typedef  TYPE_1__ AVHWDeviceContext ;
typedef  TYPE_2__ AVBufferRef ;

/* Variables and functions */
 int AV_HWDEVICE_TYPE_NONE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__**) ; 
 int FUNC1 (TYPE_2__**,int,TYPE_2__*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC5(AVBufferRef *src_ref, const char *src_name)
{
    enum AVHWDeviceType derived_type;
    const char *derived_name;
    AVBufferRef *derived_ref = NULL, *back_ref = NULL;
    AVHWDeviceContext *src_dev, *derived_dev;
    int err;

    src_dev = (AVHWDeviceContext*)src_ref->data;

    derived_type = AV_HWDEVICE_TYPE_NONE;
    while (1) {
        derived_type = FUNC3(derived_type);
        if (derived_type == AV_HWDEVICE_TYPE_NONE)
            break;

        derived_name = FUNC2(derived_type);

        err = FUNC1(&derived_ref, derived_type,
                                             src_ref, 0);
        if (err < 0) {
            FUNC4(stderr, "Unable to derive %s -> %s: %d.\n",
                    src_name, derived_name, err);
            continue;
        }

        derived_dev = (AVHWDeviceContext*)derived_ref->data;
        if (derived_dev->type != derived_type) {
            FUNC4(stderr, "Device derived as type %d has type %d.\n",
                    derived_type, derived_dev->type);
            goto fail;
        }

        if (derived_type == src_dev->type) {
            if (derived_dev != src_dev) {
                FUNC4(stderr, "Derivation of %s from itself succeeded "
                        "but did not return the same device.\n", src_name);
                goto fail;
            }
            FUNC0(&derived_ref);
            continue;
        }

        err = FUNC1(&back_ref, src_dev->type,
                                             derived_ref, 0);
        if (err < 0) {
            FUNC4(stderr, "Derivation %s to %s succeeded, but derivation "
                    "back again failed: %d.\n",
                    src_name, derived_name, err);
            goto fail;
        }

        if (back_ref->data != src_ref->data) {
            FUNC4(stderr, "Derivation %s to %s succeeded, but derivation "
                    "back again did not return the original device.\n",
                   src_name, derived_name);
            goto fail;
        }

        FUNC4(stderr, "Successfully tested derivation %s -> %s.\n",
                src_name, derived_name);

        FUNC0(&derived_ref);
        FUNC0(&back_ref);
    }

    return 0;

fail:
    FUNC0(&derived_ref);
    FUNC0(&back_ref);
    return -1;
}