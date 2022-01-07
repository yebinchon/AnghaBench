
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {TYPE_2__* in; int * on_event; TYPE_1__* opaque; } ;
struct TYPE_13__ {TYPE_3__** inputs; TYPE_1__* priv; } ;
struct TYPE_12__ {int time_base; TYPE_4__* src; } ;
struct TYPE_11__ {int sync; int after; int before; int time_base; } ;
struct TYPE_10__ {scalar_t__ nb_inputs; int source_rate; TYPE_7__ fs; } ;
typedef TYPE_1__ ProgramOpenCLContext ;
typedef TYPE_2__ FFFrameSyncIn ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int EXT_INFINITY ;
 int EXT_STOP ;
 int av_inv_q (int ) ;
 int ff_framesync_configure (TYPE_7__*) ;
 int ff_framesync_init (TYPE_7__*,TYPE_4__*,scalar_t__) ;
 int ff_opencl_filter_config_output (TYPE_3__*) ;
 int program_opencl_filter ;

__attribute__((used)) static int program_opencl_config_output(AVFilterLink *outlink)
{
    AVFilterContext *avctx = outlink->src;
    ProgramOpenCLContext *ctx = avctx->priv;
    int err;

    err = ff_opencl_filter_config_output(outlink);
    if (err < 0)
        return err;

    if (ctx->nb_inputs > 0) {
        FFFrameSyncIn *in;
        int i;

        err = ff_framesync_init(&ctx->fs, avctx, ctx->nb_inputs);
        if (err < 0)
            return err;

        ctx->fs.opaque = ctx;
        ctx->fs.on_event = &program_opencl_filter;

        in = ctx->fs.in;
        for (i = 0; i < ctx->nb_inputs; i++) {
            const AVFilterLink *inlink = avctx->inputs[i];

            in[i].time_base = inlink->time_base;
            in[i].sync = 1;
            in[i].before = EXT_STOP;
            in[i].after = EXT_INFINITY;
        }

        err = ff_framesync_configure(&ctx->fs);
        if (err < 0)
            return err;

    } else {
        outlink->time_base = av_inv_q(ctx->source_rate);
    }

    return 0;
}
