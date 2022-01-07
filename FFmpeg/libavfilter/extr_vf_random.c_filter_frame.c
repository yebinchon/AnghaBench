
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {TYPE_3__** outputs; TYPE_1__* priv; } ;
struct TYPE_11__ {TYPE_4__* dst; } ;
struct TYPE_10__ {int pts; } ;
struct TYPE_9__ {int nb_frames_filled; int nb_frames; int * pts; TYPE_2__** frames; int lfg; } ;
typedef TYPE_1__ RandomContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int av_lfg_get (int *) ;
 int ff_filter_frame (TYPE_3__*,TYPE_2__*) ;
 int memmove (int *,int *,int) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    RandomContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *out;
    int idx;

    if (s->nb_frames_filled < s->nb_frames) {
        s->frames[s->nb_frames_filled] = in;
        s->pts[s->nb_frames_filled++] = in->pts;
        return 0;
    }

    idx = av_lfg_get(&s->lfg) % s->nb_frames;

    out = s->frames[idx];
    out->pts = s->pts[0];
    memmove(&s->pts[0], &s->pts[1], (s->nb_frames - 1) * sizeof(s->pts[0]));
    s->frames[idx] = in;
    s->pts[s->nb_frames - 1] = in->pts;

    return ff_filter_frame(outlink, out);
}
