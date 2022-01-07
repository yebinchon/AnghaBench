
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* priv; } ;
struct TYPE_7__ {TYPE_3__* dst; } ;
struct TYPE_6__ {int * magnitude; } ;
typedef TYPE_1__ SpectrumSynthContext ;
typedef int AVFrame ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int try_push_frames (TYPE_3__*) ;

__attribute__((used)) static int filter_frame_magnitude(AVFilterLink *inlink, AVFrame *magnitude)
{
    AVFilterContext *ctx = inlink->dst;
    SpectrumSynthContext *s = ctx->priv;

    s->magnitude = magnitude;
    return try_push_frames(ctx);
}
