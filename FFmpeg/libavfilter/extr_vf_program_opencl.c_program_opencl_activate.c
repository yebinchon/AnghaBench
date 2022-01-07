
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {scalar_t__ nb_inputs; int fs; } ;
typedef TYPE_1__ ProgramOpenCLContext ;
typedef TYPE_2__ AVFilterContext ;


 int av_assert0 (int) ;
 int ff_framesync_activate (int *) ;

__attribute__((used)) static int program_opencl_activate(AVFilterContext *avctx)
{
    ProgramOpenCLContext *ctx = avctx->priv;

    av_assert0(ctx->nb_inputs > 0);

    return ff_framesync_activate(&ctx->fs);
}
