#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
typedef  scalar_t__ VAStatus ;
struct TYPE_15__ {unsigned int fourcc; } ;
typedef  TYPE_2__ VAImageFormat ;
struct TYPE_16__ {size_t nb_formats; TYPE_10__* formats; } ;
typedef  TYPE_3__ VAAPIDeviceContext ;
struct TYPE_19__ {int quirks; int /*<<< orphan*/  friendly_name; int /*<<< orphan*/  match_string; } ;
struct TYPE_18__ {TYPE_4__* hwctx; TYPE_1__* internal; } ;
struct TYPE_17__ {int driver_quirks; int /*<<< orphan*/  display; } ;
struct TYPE_14__ {TYPE_3__* priv; } ;
struct TYPE_13__ {int pix_fmt; TYPE_2__ image_format; } ;
typedef  TYPE_4__ AVVAAPIDeviceContext ;
typedef  TYPE_5__ AVHWDeviceContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int AV_PIX_FMT_NONE ; 
 int AV_VAAPI_DRIVER_QUIRK_USER_SET ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (TYPE_6__*) ; 
 scalar_t__ VA_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_10__**) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC6 (int) ; 
 scalar_t__ FUNC7 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,TYPE_2__*,int*) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_6__* vaapi_driver_quirks_table ; 
 int FUNC11 (unsigned int) ; 

__attribute__((used)) static int FUNC12(AVHWDeviceContext *hwdev)
{
    VAAPIDeviceContext *ctx = hwdev->internal->priv;
    AVVAAPIDeviceContext *hwctx = hwdev->hwctx;
    VAImageFormat *image_list = NULL;
    VAStatus vas;
    const char *vendor_string;
    int err, i, image_count;
    enum AVPixelFormat pix_fmt;
    unsigned int fourcc;

    image_count = FUNC8(hwctx->display);
    if (image_count <= 0) {
        err = FUNC0(EIO);
        goto fail;
    }
    image_list = FUNC6(image_count * sizeof(*image_list));
    if (!image_list) {
        err = FUNC0(ENOMEM);
        goto fail;
    }
    vas = FUNC9(hwctx->display, image_list, &image_count);
    if (vas != VA_STATUS_SUCCESS) {
        err = FUNC0(EIO);
        goto fail;
    }

    ctx->formats  = FUNC6(image_count * sizeof(*ctx->formats));
    if (!ctx->formats) {
        err = FUNC0(ENOMEM);
        goto fail;
    }
    ctx->nb_formats = 0;
    for (i = 0; i < image_count; i++) {
        fourcc  = image_list[i].fourcc;
        pix_fmt = FUNC11(fourcc);
        if (pix_fmt == AV_PIX_FMT_NONE) {
            FUNC5(hwdev, AV_LOG_DEBUG, "Format %#x -> unknown.\n",
                   fourcc);
        } else {
            FUNC5(hwdev, AV_LOG_DEBUG, "Format %#x -> %s.\n",
                   fourcc, FUNC4(pix_fmt));
            ctx->formats[ctx->nb_formats].pix_fmt      = pix_fmt;
            ctx->formats[ctx->nb_formats].image_format = image_list[i];
            ++ctx->nb_formats;
        }
    }

    vendor_string = FUNC10(hwctx->display);
    if (vendor_string)
        FUNC5(hwdev, AV_LOG_VERBOSE, "VAAPI driver: %s.\n", vendor_string);

    if (hwctx->driver_quirks & AV_VAAPI_DRIVER_QUIRK_USER_SET) {
        FUNC5(hwdev, AV_LOG_VERBOSE, "Using quirks set by user (%#x).\n",
               hwctx->driver_quirks);
    } else {
        // Detect the driver in use and set quirk flags if necessary.
        hwctx->driver_quirks = 0;
        if (vendor_string) {
            for (i = 0; i < FUNC1(vaapi_driver_quirks_table); i++) {
                if (FUNC7(vendor_string,
                           vaapi_driver_quirks_table[i].match_string)) {
                    FUNC5(hwdev, AV_LOG_VERBOSE, "Matched driver string "
                           "as known nonstandard driver \"%s\", setting "
                           "quirks (%#x).\n",
                           vaapi_driver_quirks_table[i].friendly_name,
                           vaapi_driver_quirks_table[i].quirks);
                    hwctx->driver_quirks |=
                        vaapi_driver_quirks_table[i].quirks;
                    break;
                }
            }
            if (!(i < FUNC1(vaapi_driver_quirks_table))) {
                FUNC5(hwdev, AV_LOG_VERBOSE, "Driver not found in known "
                       "nonstandard list, using standard behaviour.\n");
            }
        } else {
            FUNC5(hwdev, AV_LOG_VERBOSE, "Driver has no vendor string, "
                   "assuming standard behaviour.\n");
        }
    }

    FUNC2(image_list);
    return 0;
fail:
    FUNC3(&ctx->formats);
    FUNC2(image_list);
    return err;
}