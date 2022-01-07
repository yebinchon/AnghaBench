
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int uint8_t ;
typedef enum PhaseMode { ____Placeholder_PhaseMode } PhaseMode ;
struct TYPE_22__ {scalar_t__ is_disabled; TYPE_1__* priv; TYPE_3__** outputs; } ;
struct TYPE_21__ {int h; int w; TYPE_4__* dst; } ;
struct TYPE_20__ {int * linesize; int ** data; } ;
struct TYPE_19__ {int nb_planes; int* planeheight; TYPE_2__* frame; int * linesize; int mode; } ;
typedef TYPE_1__ PhaseContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int BOTTOM_FIRST ;
 int ENOMEM ;
 int PROGRESSIVE ;
 int TOP_FIRST ;
 int analyze_plane (TYPE_4__*,int ,TYPE_2__*,TYPE_2__*) ;
 TYPE_2__* av_frame_clone (TYPE_2__*) ;
 int av_frame_copy_props (TYPE_2__*,TYPE_2__*) ;
 int av_frame_free (TYPE_2__**) ;
 int ff_filter_frame (TYPE_3__*,TYPE_2__*) ;
 TYPE_2__* ff_get_video_buffer (TYPE_3__*,int ,int ) ;
 int memcpy (int *,int const*,int ) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    PhaseContext *s = ctx->priv;
    enum PhaseMode mode;
    int plane, top, y;
    AVFrame *out;

    if (ctx->is_disabled) {
        av_frame_free(&s->frame);



        s->frame = av_frame_clone(in);
        return ff_filter_frame(outlink, in);
    }

    out = ff_get_video_buffer(outlink, outlink->w, outlink->h);
    if (!out) {
        av_frame_free(&in);
        return AVERROR(ENOMEM);
    }
    av_frame_copy_props(out, in);

    if (!s->frame) {
        s->frame = in;
        mode = PROGRESSIVE;
    } else {
        mode = analyze_plane(ctx, s->mode, s->frame, in);
    }

    for (plane = 0; plane < s->nb_planes; plane++) {
        const uint8_t *buf = s->frame->data[plane];
        const uint8_t *from = in->data[plane];
        uint8_t *to = out->data[plane];

        for (y = 0, top = 1; y < s->planeheight[plane]; y++, top ^= 1) {
            memcpy(to, mode == (top ? BOTTOM_FIRST : TOP_FIRST) ? buf : from, s->linesize[plane]);

            buf += s->frame->linesize[plane];
            from += in->linesize[plane];
            to += out->linesize[plane];
        }
    }

    if (in != s->frame)
        av_frame_free(&s->frame);
    s->frame = in;
    return ff_filter_frame(outlink, out);
}
