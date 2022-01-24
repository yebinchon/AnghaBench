#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cl_kernel ;
typedef  int /*<<< orphan*/  cl_int ;
struct TYPE_9__ {float util_mem; int /*<<< orphan*/  command_queue; } ;
typedef  TYPE_1__ TonemapOpenCLContext ;
struct TYPE_11__ {TYPE_1__* priv; } ;
struct TYPE_10__ {float* data; } ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,size_t*,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cl_float ; 
 int /*<<< orphan*/  cl_mem ; 
 int FUNC4 (TYPE_3__*,size_t*,TYPE_2__*,int,int) ; 

__attribute__((used)) static int FUNC5(AVFilterContext *avctx, cl_kernel kernel,
                         AVFrame *output, AVFrame *input, float peak) {
    TonemapOpenCLContext *ctx = avctx->priv;
    int err = FUNC0(ENOSYS);
    size_t global_work[2];
    size_t local_work[2];
    cl_int cle;

    FUNC2(kernel, 0, cl_mem, &output->data[0]);
    FUNC2(kernel, 1, cl_mem, &input->data[0]);
    FUNC2(kernel, 2, cl_mem, &output->data[1]);
    FUNC2(kernel, 3, cl_mem, &input->data[1]);
    FUNC2(kernel, 4, cl_mem, &ctx->util_mem);
    FUNC2(kernel, 5, cl_float, &peak);

    local_work[0]  = 16;
    local_work[1]  = 16;
    // Note the work size based on uv plane, as we process a 2x2 quad in one workitem
    err = FUNC4(avctx, global_work, output,
                                                1, 16);
    if (err < 0)
        return err;

    cle = FUNC3(ctx->command_queue, kernel, 2, NULL,
                                 global_work, local_work,
                                 0, NULL, NULL);
    FUNC1(FUNC0(EIO), "Failed to enqueue kernel: %d.\n", cle);
    return 0;
fail:
    return err;
}