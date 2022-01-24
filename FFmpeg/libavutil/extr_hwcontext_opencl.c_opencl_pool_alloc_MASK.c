#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ cl_mem ;
typedef  int /*<<< orphan*/  cl_int ;
typedef  int /*<<< orphan*/  cl_image_format ;
struct TYPE_13__ {scalar_t__ image_row_pitch; } ;
typedef  TYPE_2__ cl_image_desc ;
struct TYPE_16__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  sw_format; TYPE_1__* device_ctx; } ;
struct TYPE_15__ {int /*<<< orphan*/  context; } ;
struct TYPE_14__ {int nb_planes; scalar_t__* planes; } ;
struct TYPE_12__ {TYPE_4__* hwctx; } ;
typedef  TYPE_3__ AVOpenCLFrameDescriptor ;
typedef  TYPE_4__ AVOpenCLDeviceContext ;
typedef  TYPE_5__ AVHWFramesContext ;
typedef  int /*<<< orphan*/  AVBufferRef ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  CL_MEM_READ_WRITE ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  opencl_pool_free ; 

__attribute__((used)) static AVBufferRef *FUNC8(void *opaque, int size)
{
    AVHWFramesContext      *hwfc = opaque;
    AVOpenCLDeviceContext *hwctx = hwfc->device_ctx->hwctx;
    AVOpenCLFrameDescriptor *desc;
    cl_int cle;
    cl_mem image;
    cl_image_format image_format;
    cl_image_desc   image_desc;
    int err, p;
    AVBufferRef *ref;

    desc = FUNC4(sizeof(*desc));
    if (!desc)
        return NULL;

    for (p = 0;; p++) {
        err = FUNC7(hwfc->sw_format, p,
                                      hwfc->width, hwfc->height,
                                      &image_format, &image_desc);
        if (err == FUNC0(ENOENT))
            break;
        if (err < 0)
            goto fail;

        // For generic image objects, the pitch is determined by the
        // implementation.
        image_desc.image_row_pitch = 0;

        image = FUNC5(hwctx->context, CL_MEM_READ_WRITE,
                              &image_format, &image_desc, NULL, &cle);
        if (!image) {
            FUNC3(hwfc, AV_LOG_ERROR, "Failed to create image for "
                   "plane %d: %d.\n", p, cle);
            goto fail;
        }

        desc->planes[p] = image;
    }

    desc->nb_planes = p;

    ref = FUNC1((uint8_t*)desc, sizeof(*desc),
                           &opencl_pool_free, hwfc, 0);
    if (!ref)
        goto fail;

    return ref;

fail:
    for (p = 0; desc->planes[p]; p++)
        FUNC6(desc->planes[p]);
    FUNC2(desc);
    return NULL;
}