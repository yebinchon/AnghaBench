
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int is_disabled; TYPE_2__** outputs; TYPE_1__* priv; } ;
struct TYPE_10__ {TYPE_3__* dst; } ;
struct TYPE_9__ {int queue; int is_enabled; int * gain_history_smoothed; } ;
typedef TYPE_1__ DynamicAudioNormalizerContext ;
typedef int AVFrame ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int amplify_frame (TYPE_1__*,int *,int) ;
 int analyze_frame (TYPE_1__*,int *) ;
 int av_frame_make_writable (int *) ;
 int cqueue_dequeue (int ,double*) ;
 int cqueue_empty (int ) ;
 int cqueue_enqueue (int ,int) ;
 int ff_bufqueue_add (TYPE_3__*,int *,int *) ;
 int * ff_bufqueue_get (int *) ;
 int ff_filter_frame (TYPE_2__*,int *) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    DynamicAudioNormalizerContext *s = ctx->priv;
    AVFilterLink *outlink = inlink->dst->outputs[0];
    int ret = 1;

    if (!cqueue_empty(s->gain_history_smoothed[0])) {
        double is_enabled;
        AVFrame *out = ff_bufqueue_get(&s->queue);

        cqueue_dequeue(s->is_enabled, &is_enabled);

        amplify_frame(s, out, is_enabled > 0.);
        ret = ff_filter_frame(outlink, out);
    }

    av_frame_make_writable(in);
    cqueue_enqueue(s->is_enabled, !ctx->is_disabled);
    analyze_frame(s, in);
    ff_bufqueue_add(ctx, &s->queue, in);

    return ret;
}
