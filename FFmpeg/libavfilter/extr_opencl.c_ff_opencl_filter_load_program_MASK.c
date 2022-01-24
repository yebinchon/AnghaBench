#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ cl_int ;
struct TYPE_8__ {TYPE_2__* priv; } ;
struct TYPE_7__ {int /*<<< orphan*/ * program; TYPE_1__* hwctx; } ;
struct TYPE_6__ {int /*<<< orphan*/  device_id; int /*<<< orphan*/  context; } ;
typedef  TYPE_2__ OpenCLFilterContext ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ CL_BUILD_PROGRAM_FAILURE ; 
 int /*<<< orphan*/  CL_PROGRAM_BUILD_LOG ; 
 scalar_t__ CL_SUCCESS ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC3 (size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int,char const**,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,char*,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(AVFilterContext *avctx,
                                  const char **program_source_array,
                                  int nb_strings)
{
    OpenCLFilterContext *ctx = avctx->priv;
    cl_int cle;

    ctx->program = FUNC5(ctx->hwctx->context, nb_strings,
                                             program_source_array,
                                             NULL, &cle);
    if (!ctx->program) {
        FUNC2(avctx, AV_LOG_ERROR, "Failed to create program: %d.\n", cle);
        return FUNC0(EIO);
    }

    cle = FUNC4(ctx->program, 1, &ctx->hwctx->device_id,
                         NULL, NULL, NULL);
    if (cle != CL_SUCCESS) {
        FUNC2(avctx, AV_LOG_ERROR, "Failed to build program: %d.\n", cle);

        if (cle == CL_BUILD_PROGRAM_FAILURE) {
            char *log;
            size_t log_length;

            FUNC6(ctx->program, ctx->hwctx->device_id,
                                  CL_PROGRAM_BUILD_LOG, 0, NULL, &log_length);

            log = FUNC3(log_length);
            if (log) {
                cle = FUNC6(ctx->program,
                                            ctx->hwctx->device_id,
                                            CL_PROGRAM_BUILD_LOG,
                                            log_length, log, NULL);
                if (cle == CL_SUCCESS)
                    FUNC2(avctx, AV_LOG_ERROR, "Build log:\n%s\n", log);
            }

            FUNC1(log);
        }

        FUNC7(ctx->program);
        ctx->program = NULL;
        return FUNC0(EIO);
    }

    return 0;
}