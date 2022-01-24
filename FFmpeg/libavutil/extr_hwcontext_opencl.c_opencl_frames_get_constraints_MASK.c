#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  max_width ;
typedef  int /*<<< orphan*/  max_height ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
typedef  scalar_t__ cl_uint ;
typedef  int /*<<< orphan*/  cl_int ;
struct TYPE_11__ {scalar_t__ image_channel_order; scalar_t__ image_channel_data_type; } ;
typedef  TYPE_1__ cl_image_format ;
typedef  int /*<<< orphan*/  cl_image_desc ;
struct TYPE_14__ {TYPE_2__* hwctx; } ;
struct TYPE_13__ {size_t max_width; size_t max_height; int* valid_sw_formats; void** valid_hw_formats; } ;
struct TYPE_12__ {int /*<<< orphan*/  context; int /*<<< orphan*/  device_id; } ;
typedef  TYPE_2__ AVOpenCLDeviceContext ;
typedef  TYPE_3__ AVHWFramesConstraints ;
typedef  TYPE_4__ AVHWDeviceContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int AV_PIX_FMT_NB ; 
 void* AV_PIX_FMT_NONE ; 
 void* AV_PIX_FMT_OPENCL ; 
 int /*<<< orphan*/  CL_DEVICE_IMAGE2D_MAX_HEIGHT ; 
 int /*<<< orphan*/  CL_DEVICE_IMAGE2D_MAX_WIDTH ; 
 int /*<<< orphan*/  CL_MEM_OBJECT_IMAGE2D ; 
 int /*<<< orphan*/  CL_MEM_READ_WRITE ; 
 int /*<<< orphan*/  CL_SUCCESS ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC4 (int,int) ; 
 int FUNC5 (int**,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,TYPE_1__*,scalar_t__*) ; 
 int FUNC8 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(AVHWDeviceContext *hwdev,
                                         const void *hwconfig,
                                         AVHWFramesConstraints *constraints)
{
    AVOpenCLDeviceContext *hwctx = hwdev->hwctx;
    cl_uint nb_image_formats;
    cl_image_format *image_formats = NULL;
    cl_int cle;
    enum AVPixelFormat pix_fmt;
    int err, pix_fmts_found;
    size_t max_width, max_height;

    cle = FUNC6(hwctx->device_id, CL_DEVICE_IMAGE2D_MAX_WIDTH,
                          sizeof(max_width), &max_width, NULL);
    if (cle != CL_SUCCESS) {
        FUNC3(hwdev, AV_LOG_ERROR, "Failed to query maximum "
               "supported image width: %d.\n", cle);
    } else {
        constraints->max_width = max_width;
    }
    cle = FUNC6(hwctx->device_id, CL_DEVICE_IMAGE2D_MAX_HEIGHT,
                          sizeof(max_height), &max_height, NULL);
    if (cle != CL_SUCCESS) {
        FUNC3(hwdev, AV_LOG_ERROR, "Failed to query maximum "
               "supported image height: %d.\n", cle);
    } else {
        constraints->max_height = max_height;
    }
    FUNC3(hwdev, AV_LOG_DEBUG, "Maximum supported image size %dx%d.\n",
           constraints->max_width, constraints->max_height);

    cle = FUNC7(hwctx->context,
                                     CL_MEM_READ_WRITE,
                                     CL_MEM_OBJECT_IMAGE2D,
                                     0, NULL, &nb_image_formats);
    if (cle != CL_SUCCESS) {
        FUNC3(hwdev, AV_LOG_ERROR, "Failed to query supported "
               "image formats: %d.\n", cle);
        err = FUNC0(ENOSYS);
        goto fail;
    }
    if (nb_image_formats == 0) {
        FUNC3(hwdev, AV_LOG_ERROR, "No image support in OpenCL "
               "driver (zero supported image formats).\n");
        err = FUNC0(ENOSYS);
        goto fail;
    }

    image_formats =
        FUNC4(nb_image_formats, sizeof(*image_formats));
    if (!image_formats) {
        err = FUNC0(ENOMEM);
        goto fail;
    }

    cle = FUNC7(hwctx->context,
                                     CL_MEM_READ_WRITE,
                                     CL_MEM_OBJECT_IMAGE2D,
                                     nb_image_formats,
                                     image_formats, NULL);
    if (cle != CL_SUCCESS) {
        FUNC3(hwdev, AV_LOG_ERROR, "Failed to query supported "
               "image formats: %d.\n", cle);
        err = FUNC0(ENOSYS);
        goto fail;
    }

    pix_fmts_found = 0;
    for (pix_fmt = 0; pix_fmt < AV_PIX_FMT_NB; pix_fmt++) {
        cl_image_format image_format;
        cl_image_desc   image_desc;
        int plane, i;

        for (plane = 0;; plane++) {
            err = FUNC8(pix_fmt, plane, 0, 0,
                                          &image_format,
                                          &image_desc);
            if (err < 0)
                break;

            for (i = 0; i < nb_image_formats; i++) {
                if (image_formats[i].image_channel_order ==
                    image_format.image_channel_order &&
                    image_formats[i].image_channel_data_type ==
                    image_format.image_channel_data_type)
                    break;
            }
            if (i == nb_image_formats) {
                err = FUNC0(EINVAL);
                break;
            }
        }
        if (err != FUNC0(ENOENT))
            continue;

        FUNC3(hwdev, AV_LOG_DEBUG, "Format %s supported.\n",
               FUNC2(pix_fmt));

        err = FUNC5(&constraints->valid_sw_formats,
                                pix_fmts_found + 2,
                                sizeof(*constraints->valid_sw_formats));
        if (err < 0)
            goto fail;
        constraints->valid_sw_formats[pix_fmts_found] = pix_fmt;
        constraints->valid_sw_formats[pix_fmts_found + 1] =
            AV_PIX_FMT_NONE;
        ++pix_fmts_found;
    }

    FUNC1(&image_formats);

    constraints->valid_hw_formats =
        FUNC4(2, sizeof(*constraints->valid_hw_formats));
    if (!constraints->valid_hw_formats) {
        err = FUNC0(ENOMEM);
        goto fail;
    }
    constraints->valid_hw_formats[0] = AV_PIX_FMT_OPENCL;
    constraints->valid_hw_formats[1] = AV_PIX_FMT_NONE;

    return 0;

fail:
    FUNC1(&image_formats);
    return err;
}