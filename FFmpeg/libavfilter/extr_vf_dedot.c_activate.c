
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_21__ {int plane; int pts; struct TYPE_21__* out; } ;
typedef TYPE_2__ ThreadData ;
struct TYPE_23__ {TYPE_1__* internal; int is_disabled; TYPE_3__* priv; int ** outputs; int ** inputs; } ;
struct TYPE_22__ {int eof; int eof_frames; int m; TYPE_2__** frames; int * planeheight; int derainbow; int dedotcrawl; } ;
struct TYPE_20__ {int (* execute ) (TYPE_5__*,int ,TYPE_2__*,int *,int ) ;} ;
typedef TYPE_3__ DedotContext ;
typedef TYPE_2__ AVFrame ;
typedef int AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int ENOMEM ;
 int FFERROR_NOT_READY ;
 int FFMIN (int ,int ) ;
 int FF_FILTER_FORWARD_STATUS_BACK (int *,int *) ;
 int FF_FILTER_FORWARD_WANTED (int *,int *) ;
 void* av_frame_clone (TYPE_2__*) ;
 int av_frame_free (TYPE_2__**) ;
 int av_frame_make_writable (TYPE_2__*) ;
 int ff_filter_frame (int *,TYPE_2__*) ;
 int ff_filter_get_nb_threads (TYPE_5__*) ;
 int ff_filter_set_ready (TYPE_5__*,int) ;
 scalar_t__ ff_inlink_acknowledge_status (int *,int*,int *) ;
 int ff_inlink_consume_frame (int *,TYPE_2__**) ;
 int ff_outlink_set_status (int *,int,int ) ;
 int stub1 (TYPE_5__*,int ,TYPE_2__*,int *,int ) ;
 int stub2 (TYPE_5__*,int ,TYPE_2__*,int *,int ) ;
 int stub3 (TYPE_5__*,int ,TYPE_2__*,int *,int ) ;

__attribute__((used)) static int activate(AVFilterContext *ctx)
{
    AVFilterLink *inlink = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];
    DedotContext *s = ctx->priv;
    AVFrame *frame = ((void*)0);
    int64_t pts;
    int status;
    int ret = 0;

    FF_FILTER_FORWARD_STATUS_BACK(outlink, inlink);

    if (s->eof == 0) {
        ret = ff_inlink_consume_frame(inlink, &frame);
        if (ret < 0)
            return ret;
    }
    if (frame || s->eof_frames > 0) {
        AVFrame *out = ((void*)0);

        if (frame) {
            for (int i = 2; i < 5; i++) {
                if (!s->frames[i])
                    s->frames[i] = av_frame_clone(frame);
            }
            av_frame_free(&frame);
        } else if (s->frames[3]) {
            s->eof_frames--;
            s->frames[4] = av_frame_clone(s->frames[3]);
        }

        if (s->frames[0] &&
            s->frames[1] &&
            s->frames[2] &&
            s->frames[3] &&
            s->frames[4]) {
            out = av_frame_clone(s->frames[2]);
            if (out && !ctx->is_disabled) {
                ret = av_frame_make_writable(out);
                if (ret >= 0) {
                    if (s->m & 1)
                        ctx->internal->execute(ctx, s->dedotcrawl, out, ((void*)0),
                                               FFMIN(s->planeheight[0],
                                               ff_filter_get_nb_threads(ctx)));
                    if (s->m & 2) {
                        ThreadData td;
                        td.out = out; td.plane = 1;
                        ctx->internal->execute(ctx, s->derainbow, &td, ((void*)0),
                                               FFMIN(s->planeheight[1],
                                               ff_filter_get_nb_threads(ctx)));
                        td.plane = 2;
                        ctx->internal->execute(ctx, s->derainbow, &td, ((void*)0),
                                               FFMIN(s->planeheight[2],
                                               ff_filter_get_nb_threads(ctx)));
                    }
                }
            } else if (!out) {
                ret = AVERROR(ENOMEM);
            }
        }

        av_frame_free(&s->frames[0]);
        s->frames[0] = s->frames[1];
        s->frames[1] = s->frames[2];
        s->frames[2] = s->frames[3];
        s->frames[3] = s->frames[4];
        s->frames[4] = ((void*)0);

        if (ret < 0)
            return ret;
        if (out)
            return ff_filter_frame(outlink, out);
    }

    if (s->eof) {
        if (s->eof_frames <= 0) {
            ff_outlink_set_status(outlink, AVERROR_EOF, s->frames[2]->pts);
        } else {
            ff_filter_set_ready(ctx, 10);
        }
        return 0;
    }

    if (!s->eof && ff_inlink_acknowledge_status(inlink, &status, &pts)) {
        if (status == AVERROR_EOF) {
            s->eof = 1;
            s->eof_frames = !!s->frames[0] + !!s->frames[1];
            if (s->eof_frames <= 0) {
                ff_outlink_set_status(outlink, AVERROR_EOF, pts);
                return 0;
            }
            ff_filter_set_ready(ctx, 10);
            return 0;
        }
    }

    FF_FILTER_FORWARD_WANTED(outlink, inlink);

    return FFERROR_NOT_READY;
}
