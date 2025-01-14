
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_19__ {int w; int h; TYPE_1__* dst; } ;
struct TYPE_18__ {scalar_t__* data; scalar_t__* linesize; } ;
struct TYPE_17__ {int radius; int chroma_w; int chroma_h; int chroma_r; } ;
struct TYPE_16__ {TYPE_4__** outputs; TYPE_2__* priv; } ;
typedef TYPE_2__ GradFunContext ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVFilterLink ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int FFMIN (int,int) ;
 int av_frame_copy_props (TYPE_3__*,TYPE_3__*) ;
 int av_frame_free (TYPE_3__**) ;
 scalar_t__ av_frame_is_writable (TYPE_3__*) ;
 int av_image_copy_plane (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int) ;
 int ff_filter_frame (TYPE_4__*,TYPE_3__*) ;
 TYPE_3__* ff_get_video_buffer (TYPE_4__*,int,int) ;
 int filter (TYPE_2__*,scalar_t__,scalar_t__,int,int,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    GradFunContext *s = inlink->dst->priv;
    AVFilterLink *outlink = inlink->dst->outputs[0];
    AVFrame *out;
    int p, direct;

    if (av_frame_is_writable(in)) {
        direct = 1;
        out = in;
    } else {
        direct = 0;
        out = ff_get_video_buffer(outlink, outlink->w, outlink->h);
        if (!out) {
            av_frame_free(&in);
            return AVERROR(ENOMEM);
        }
        av_frame_copy_props(out, in);
    }

    for (p = 0; p < 4 && in->data[p] && in->linesize[p]; p++) {
        int w = inlink->w;
        int h = inlink->h;
        int r = s->radius;
        if (p) {
            w = s->chroma_w;
            h = s->chroma_h;
            r = s->chroma_r;
        }

        if (FFMIN(w, h) > 2 * r)
            filter(s, out->data[p], in->data[p], w, h, out->linesize[p], in->linesize[p], r);
        else if (out->data[p] != in->data[p])
            av_image_copy_plane(out->data[p], out->linesize[p], in->data[p], in->linesize[p], w, h);
    }

    if (!direct)
        av_frame_free(&in);

    return ff_filter_frame(outlink, out);
}
