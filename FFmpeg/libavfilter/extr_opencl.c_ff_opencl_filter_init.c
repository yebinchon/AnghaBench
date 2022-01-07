
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {int output_format; } ;
typedef TYPE_1__ OpenCLFilterContext ;
typedef TYPE_2__ AVFilterContext ;


 int AV_PIX_FMT_NONE ;

int ff_opencl_filter_init(AVFilterContext *avctx)
{
    OpenCLFilterContext *ctx = avctx->priv;

    ctx->output_format = AV_PIX_FMT_NONE;

    return 0;
}
