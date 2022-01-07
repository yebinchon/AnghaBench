
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_20__ {int plane; TYPE_4__* out; TYPE_4__* in; } ;
typedef TYPE_2__ ThreadData ;
struct TYPE_24__ {TYPE_1__* internal; TYPE_3__* priv; TYPE_5__** outputs; } ;
struct TYPE_23__ {int h; int w; TYPE_6__* dst; } ;
struct TYPE_22__ {int* linesize; int ** data; } ;
struct TYPE_21__ {int nb_planes; scalar_t__* mode; int * planewidth; int * planeheight; } ;
struct TYPE_19__ {int (* execute ) (TYPE_6__*,int ,TYPE_2__*,int *,int ) ;} ;
typedef TYPE_3__ RemoveGrainContext ;
typedef TYPE_4__ AVFrame ;
typedef TYPE_5__ AVFilterLink ;
typedef TYPE_6__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int FFMIN (int ,int ) ;
 int av_frame_copy_props (TYPE_4__*,TYPE_4__*) ;
 int av_frame_free (TYPE_4__**) ;
 int av_image_copy_plane (int *,int,int *,int,int ,int ) ;
 int ff_filter_frame (TYPE_5__*,TYPE_4__*) ;
 int ff_filter_get_nb_threads (TYPE_6__*) ;
 TYPE_4__* ff_get_video_buffer (TYPE_5__*,int ,int ) ;
 int filter_slice ;
 int memcpy (int *,int *,int ) ;
 int stub1 (TYPE_6__*,int ,TYPE_2__*,int *,int ) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    RemoveGrainContext *s = ctx->priv;
    ThreadData td;
    AVFrame *out;
    int i;

    out = ff_get_video_buffer(outlink, outlink->w, outlink->h);
    if (!out) {
        av_frame_free(&in);
        return AVERROR(ENOMEM);
    }
    av_frame_copy_props(out, in);

    for (i = 0; i < s->nb_planes; i++) {
        uint8_t *dst = out->data[i];
        uint8_t *src = in->data[i];

        if (s->mode[i] == 0) {
            av_image_copy_plane(dst, out->linesize[i],
                                src, in->linesize[i],
                                s->planewidth[i], s->planeheight[i]);
            continue;
        }

        memcpy(dst, src, s->planewidth[i]);

        td.in = in; td.out = out; td.plane = i;
        ctx->internal->execute(ctx, filter_slice, &td, ((void*)0),
                               FFMIN(s->planeheight[i], ff_filter_get_nb_threads(ctx)));

        src = in->data[i] + (s->planeheight[i] - 1) * in->linesize[i];
        dst = out->data[i] + (s->planeheight[i] - 1) * out->linesize[i];
        memcpy(dst, src, s->planewidth[i]);
    }

    av_frame_free(&in);
    return ff_filter_frame(outlink, out);
}
