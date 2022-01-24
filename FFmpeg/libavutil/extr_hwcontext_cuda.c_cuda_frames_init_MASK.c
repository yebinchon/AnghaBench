#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ sw_format; TYPE_1__* internal; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  pool; } ;
struct TYPE_8__ {int /*<<< orphan*/  shift_height; int /*<<< orphan*/  shift_width; } ;
struct TYPE_7__ {int /*<<< orphan*/  pool_internal; TYPE_2__* priv; } ;
typedef  TYPE_2__ CUDAFramesContext ;
typedef  TYPE_3__ AVHWFramesContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  CUDA_FRAME_ALIGNMENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOSYS ; 
 int FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cuda_pool_alloc ; 
 scalar_t__* supported_formats ; 

__attribute__((used)) static int FUNC7(AVHWFramesContext *ctx)
{
    CUDAFramesContext *priv = ctx->internal->priv;
    int i;

    for (i = 0; i < FUNC1(supported_formats); i++) {
        if (ctx->sw_format == supported_formats[i])
            break;
    }
    if (i == FUNC1(supported_formats)) {
        FUNC5(ctx, AV_LOG_ERROR, "Pixel format '%s' is not supported\n",
               FUNC3(ctx->sw_format));
        return FUNC0(ENOSYS);
    }

    FUNC6(ctx->sw_format, &priv->shift_width, &priv->shift_height);

    if (!ctx->pool) {
        int size = FUNC4(ctx->sw_format, ctx->width, ctx->height, CUDA_FRAME_ALIGNMENT);
        if (size < 0)
            return size;

        ctx->internal->pool_internal = FUNC2(size, ctx, cuda_pool_alloc, NULL);
        if (!ctx->internal->pool_internal)
            return FUNC0(ENOMEM);
    }

    return 0;
}