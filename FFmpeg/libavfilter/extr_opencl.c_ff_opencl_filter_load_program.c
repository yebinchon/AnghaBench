
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ cl_int ;
struct TYPE_8__ {TYPE_2__* priv; } ;
struct TYPE_7__ {int * program; TYPE_1__* hwctx; } ;
struct TYPE_6__ {int device_id; int context; } ;
typedef TYPE_2__ OpenCLFilterContext ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 scalar_t__ CL_BUILD_PROGRAM_FAILURE ;
 int CL_PROGRAM_BUILD_LOG ;
 scalar_t__ CL_SUCCESS ;
 int EIO ;
 int av_free (char*) ;
 int av_log (TYPE_3__*,int ,char*,char*) ;
 char* av_malloc (size_t) ;
 scalar_t__ clBuildProgram (int *,int,int *,int *,int *,int *) ;
 int * clCreateProgramWithSource (int ,int,char const**,int *,scalar_t__*) ;
 scalar_t__ clGetProgramBuildInfo (int *,int ,int ,size_t,char*,size_t*) ;
 int clReleaseProgram (int *) ;

int ff_opencl_filter_load_program(AVFilterContext *avctx,
                                  const char **program_source_array,
                                  int nb_strings)
{
    OpenCLFilterContext *ctx = avctx->priv;
    cl_int cle;

    ctx->program = clCreateProgramWithSource(ctx->hwctx->context, nb_strings,
                                             program_source_array,
                                             ((void*)0), &cle);
    if (!ctx->program) {
        av_log(avctx, AV_LOG_ERROR, "Failed to create program: %d.\n", cle);
        return AVERROR(EIO);
    }

    cle = clBuildProgram(ctx->program, 1, &ctx->hwctx->device_id,
                         ((void*)0), ((void*)0), ((void*)0));
    if (cle != CL_SUCCESS) {
        av_log(avctx, AV_LOG_ERROR, "Failed to build program: %d.\n", cle);

        if (cle == CL_BUILD_PROGRAM_FAILURE) {
            char *log;
            size_t log_length;

            clGetProgramBuildInfo(ctx->program, ctx->hwctx->device_id,
                                  CL_PROGRAM_BUILD_LOG, 0, ((void*)0), &log_length);

            log = av_malloc(log_length);
            if (log) {
                cle = clGetProgramBuildInfo(ctx->program,
                                            ctx->hwctx->device_id,
                                            CL_PROGRAM_BUILD_LOG,
                                            log_length, log, ((void*)0));
                if (cle == CL_SUCCESS)
                    av_log(avctx, AV_LOG_ERROR, "Build log:\n%s\n", log);
            }

            av_free(log);
        }

        clReleaseProgram(ctx->program);
        ctx->program = ((void*)0);
        return AVERROR(EIO);
    }

    return 0;
}
