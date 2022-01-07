
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int is_disabled; int * inputs; TYPE_1__* priv; } ;
struct TYPE_10__ {TYPE_4__* src; } ;
struct TYPE_9__ {int pts; } ;
struct TYPE_8__ {int nb_frames; TYPE_2__** frames; int flush_idx; int * pts; } ;
typedef TYPE_1__ RandomContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR_EOF ;
 int ff_filter_frame (TYPE_3__*,TYPE_2__*) ;
 int ff_request_frame (int ) ;

__attribute__((used)) static int request_frame(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    RandomContext *s = ctx->priv;
    int ret;

    ret = ff_request_frame(ctx->inputs[0]);

next:
    if (ret == AVERROR_EOF && !ctx->is_disabled && s->nb_frames > 0) {
        AVFrame *out = s->frames[s->nb_frames - 1];
        if (!out) {
            s->nb_frames--;
            goto next;
        }
        out->pts = s->pts[s->flush_idx++];
        ret = ff_filter_frame(outlink, out);
        s->frames[s->nb_frames - 1] = ((void*)0);
        s->nb_frames--;
    }

    return ret;
}
