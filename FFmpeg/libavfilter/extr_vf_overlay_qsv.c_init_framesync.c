
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {TYPE_3__* in; TYPE_2__* opaque; int on_event; } ;
struct TYPE_12__ {int nb_inputs; TYPE_1__** inputs; TYPE_2__* priv; } ;
struct TYPE_11__ {int sync; int time_base; int after; int before; } ;
struct TYPE_10__ {TYPE_6__ fs; } ;
struct TYPE_9__ {int time_base; } ;
typedef TYPE_2__ QSVOverlayContext ;
typedef TYPE_3__ FFFrameSyncIn ;
typedef TYPE_4__ AVFilterContext ;


 int EXT_INFINITY ;
 int EXT_STOP ;
 int ff_framesync_configure (TYPE_6__*) ;
 int ff_framesync_init (TYPE_6__*,TYPE_4__*,int) ;
 int process_frame ;

__attribute__((used)) static int init_framesync(AVFilterContext *ctx)
{
    QSVOverlayContext *s = ctx->priv;
    int ret, i;

    s->fs.on_event = process_frame;
    s->fs.opaque = s;
    ret = ff_framesync_init(&s->fs, ctx, ctx->nb_inputs);
    if (ret < 0)
        return ret;

    for (i = 0; i < ctx->nb_inputs; i++) {
        FFFrameSyncIn *in = &s->fs.in[i];
        in->before = EXT_STOP;
        in->after = EXT_INFINITY;
        in->sync = i ? 1 : 2;
        in->time_base = ctx->inputs[i]->time_base;
    }

    return ff_framesync_configure(&s->fs);
}
