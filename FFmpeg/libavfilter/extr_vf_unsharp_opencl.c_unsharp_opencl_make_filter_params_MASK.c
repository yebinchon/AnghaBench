#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  void* cl_mem ;
typedef  int /*<<< orphan*/  cl_int ;
struct TYPE_12__ {TYPE_2__* hwctx; int /*<<< orphan*/  output_format; } ;
struct TYPE_14__ {int nb_planes; float luma_size_x; float luma_size_y; float luma_amount; float chroma_size_x; float chroma_size_y; float chroma_amount; TYPE_4__* plane; TYPE_3__ ocf; scalar_t__ global; } ;
typedef  TYPE_5__ UnsharpOpenCLContext ;
struct TYPE_16__ {TYPE_5__* priv; } ;
struct TYPE_15__ {int nb_components; int flags; TYPE_1__* comp; } ;
struct TYPE_13__ {double* blur_x; double* blur_y; int size_x; int size_y; float amount; void* coef_y; void* coef_x; void* matrix; } ;
struct TYPE_11__ {int /*<<< orphan*/  context; } ;
struct TYPE_10__ {scalar_t__ plane; } ;
typedef  TYPE_6__ AVPixFmtDescriptor ;
typedef  TYPE_7__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AV_PIX_FMT_FLAG_RGB ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int CL_MEM_COPY_HOST_PTR ; 
 int CL_MEM_HOST_NO_ACCESS ; 
 int CL_MEM_READ_ONLY ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (float**) ; 
 float* FUNC4 (size_t) ; 
 TYPE_6__* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (float) ; 
 void* FUNC7 (int /*<<< orphan*/ ,int,int,float*,int /*<<< orphan*/ *) ; 
 double FUNC8 (double) ; 

__attribute__((used)) static int FUNC9(AVFilterContext *avctx)
{
    UnsharpOpenCLContext *ctx = avctx->priv;
    const AVPixFmtDescriptor *desc;
    float *matrix;
    double val, sum;
    cl_int cle;
    cl_mem buffer;
    size_t matrix_bytes;
    float diam_x, diam_y, amount;
    int err, p, x, y, size_x, size_y;

    desc = FUNC5(ctx->ocf.output_format);

    ctx->nb_planes = 0;
    for (p = 0; p < desc->nb_components; p++)
        ctx->nb_planes = FUNC2(ctx->nb_planes, desc->comp[p].plane + 1);

    for (p = 0; p < ctx->nb_planes; p++) {
        if (p == 0 || (desc->flags & AV_PIX_FMT_FLAG_RGB)) {
            diam_x = ctx->luma_size_x;
            diam_y = ctx->luma_size_y;
            amount = ctx->luma_amount;
        } else {
            diam_x = ctx->chroma_size_x;
            diam_y = ctx->chroma_size_y;
            amount = ctx->chroma_amount;
        }
        size_x = (int)FUNC6(diam_x) | 1;
        size_y = (int)FUNC6(diam_y) | 1;
        matrix_bytes = size_x * size_y * sizeof(float);

        matrix = FUNC4(matrix_bytes);
        if (!matrix) {
            err = FUNC0(ENOMEM);
            goto fail;
        }

        sum = 0.0;
        for (x = 0; x < size_x; x++) {
            double dx = (double)(x - size_x / 2) / diam_x;
            sum += ctx->plane[p].blur_x[x] = FUNC8(-16.0 * (dx * dx));
        }
        for (x = 0; x < size_x; x++)
            ctx->plane[p].blur_x[x] /= sum;

        sum = 0.0;
        for (y = 0; y < size_y; y++) {
            double dy = (double)(y - size_y / 2) / diam_y;
            sum += ctx->plane[p].blur_y[y] = FUNC8(-16.0 * (dy * dy));
        }
        for (y = 0; y < size_y; y++)
            ctx->plane[p].blur_y[y] /= sum;

        for (y = 0; y < size_y; y++) {
            for (x = 0; x < size_x; x++) {
                val = ctx->plane[p].blur_x[x] * ctx->plane[p].blur_y[y];
                matrix[y * size_x + x] = val;
            }
        }

        if (ctx->global) {
            buffer = FUNC7(ctx->ocf.hwctx->context,
                                    CL_MEM_READ_ONLY     |
                                    CL_MEM_COPY_HOST_PTR |
                                    CL_MEM_HOST_NO_ACCESS,
                                    matrix_bytes, matrix, &cle);
            FUNC1(FUNC0(EIO), "Failed to create matrix buffer: "
                             "%d.\n", cle);
            ctx->plane[p].matrix = buffer;
        } else {
            buffer = FUNC7(ctx->ocf.hwctx->context,
                                    CL_MEM_READ_ONLY     |
                                    CL_MEM_COPY_HOST_PTR |
                                    CL_MEM_HOST_NO_ACCESS,
                                    sizeof(ctx->plane[p].blur_x),
                                    ctx->plane[p].blur_x, &cle);
            FUNC1(FUNC0(EIO), "Failed to create x-coef buffer: "
                             "%d.\n", cle);
            ctx->plane[p].coef_x = buffer;

            buffer = FUNC7(ctx->ocf.hwctx->context,
                                    CL_MEM_READ_ONLY     |
                                    CL_MEM_COPY_HOST_PTR |
                                    CL_MEM_HOST_NO_ACCESS,
                                    sizeof(ctx->plane[p].blur_y),
                                    ctx->plane[p].blur_y, &cle);
            FUNC1(FUNC0(EIO), "Failed to create y-coef buffer: "
                             "%d.\n", cle);
            ctx->plane[p].coef_y = buffer;
        }

        FUNC3(&matrix);

        ctx->plane[p].size_x = size_x;
        ctx->plane[p].size_y = size_y;
        ctx->plane[p].amount = amount;
    }

    err = 0;
fail:
    FUNC3(&matrix);
    return err;
}