#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
typedef  int /*<<< orphan*/  cl_int ;
struct TYPE_16__ {TYPE_4__* priv; } ;
struct TYPE_15__ {int nb_components; int log2_chroma_w; int log2_chroma_h; TYPE_1__* comp; } ;
struct TYPE_13__ {int /*<<< orphan*/  program; TYPE_2__* hwctx; } ;
struct TYPE_14__ {int nb_planes; int x_subsample; int y_subsample; int x_position; int y_position; int alpha_separate; int initialised; int /*<<< orphan*/  kernel; scalar_t__ command_queue; TYPE_3__ ocf; } ;
struct TYPE_12__ {int /*<<< orphan*/  device_id; int /*<<< orphan*/  context; } ;
struct TYPE_11__ {scalar_t__ plane; } ;
typedef  TYPE_4__ OverlayOpenCLContext ;
typedef  TYPE_5__ AVPixFmtDescriptor ;
typedef  TYPE_6__ AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EIO ; 
 int FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_5__* FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_6__*,char const**,int) ; 
 char* ff_opencl_source_overlay ; 

__attribute__((used)) static int FUNC10(AVFilterContext *avctx,
                               enum AVPixelFormat main_format,
                               enum AVPixelFormat overlay_format)
{
    OverlayOpenCLContext *ctx = avctx->priv;
    cl_int cle;
    const char *source = ff_opencl_source_overlay;
    const char *kernel;
    const AVPixFmtDescriptor *main_desc, *overlay_desc;
    int err, i, main_planes, overlay_planes;

    main_desc    = FUNC4(main_format);
    overlay_desc = FUNC4(overlay_format);

    main_planes = overlay_planes = 0;
    for (i = 0; i < main_desc->nb_components; i++)
        main_planes = FUNC2(main_planes,
                            main_desc->comp[i].plane + 1);
    for (i = 0; i < overlay_desc->nb_components; i++)
        overlay_planes = FUNC2(overlay_planes,
                               overlay_desc->comp[i].plane + 1);

    ctx->nb_planes = main_planes;
    ctx->x_subsample = 1 << main_desc->log2_chroma_w;
    ctx->y_subsample = 1 << main_desc->log2_chroma_h;

    if (ctx->x_position % ctx->x_subsample ||
        ctx->y_position % ctx->y_subsample) {
        FUNC3(avctx, AV_LOG_WARNING, "Warning: overlay position (%d, %d) "
               "does not match subsampling (%d, %d).\n",
               ctx->x_position, ctx->y_position,
               ctx->x_subsample, ctx->y_subsample);
    }

    if (main_planes == overlay_planes) {
        if (main_desc->nb_components == overlay_desc->nb_components)
            kernel = "overlay_no_alpha";
        else
            kernel = "overlay_internal_alpha";
        ctx->alpha_separate = 0;
    } else {
        kernel = "overlay_external_alpha";
        ctx->alpha_separate = 1;
    }

    FUNC3(avctx, AV_LOG_DEBUG, "Using kernel %s.\n", kernel);

    err = FUNC9(avctx, &source, 1);
    if (err < 0)
        goto fail;

    ctx->command_queue = FUNC5(ctx->ocf.hwctx->context,
                                              ctx->ocf.hwctx->device_id,
                                              0, &cle);
    FUNC1(FUNC0(EIO), "Failed to create OpenCL "
                     "command queue %d.\n", cle);

    ctx->kernel = FUNC6(ctx->ocf.program, kernel, &cle);
    FUNC1(FUNC0(EIO), "Failed to create kernel %d.\n", cle);

    ctx->initialised = 1;
    return 0;

fail:
    if (ctx->command_queue)
        FUNC7(ctx->command_queue);
    if (ctx->kernel)
        FUNC8(ctx->kernel);
    return err;
}