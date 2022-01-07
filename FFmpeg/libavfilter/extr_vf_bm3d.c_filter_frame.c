
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_19__ {int plane; int ref_linesize; int ref; int src_linesize; int src; } ;
typedef TYPE_2__ ThreadData ;
struct TYPE_23__ {TYPE_1__* internal; scalar_t__ is_disabled; TYPE_5__** outputs; TYPE_3__* priv; } ;
struct TYPE_22__ {int h; int w; } ;
struct TYPE_21__ {int * linesize; int * data; } ;
struct TYPE_20__ {int nb_planes; int* planeheight; int block_size; int planes; int (* do_output ) (TYPE_3__*,int ,int ,int,int const) ;int * planewidth; int nb_threads; } ;
struct TYPE_18__ {int (* execute ) (TYPE_6__*,int ,TYPE_2__*,int *,int const) ;} ;
typedef TYPE_3__ BM3DContext ;
typedef TYPE_4__ AVFrame ;
typedef TYPE_5__ AVFilterLink ;
typedef TYPE_6__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int FFMAX (int,int ) ;
 int FFMIN (int ,int) ;
 int av_frame_copy_props (TYPE_4__*,TYPE_4__*) ;
 int av_image_copy_plane (int ,int ,int ,int ,int ,int) ;
 TYPE_4__* ff_get_video_buffer (TYPE_5__*,int ,int ) ;
 int filter_slice ;
 int stub1 (TYPE_6__*,int ,TYPE_2__*,int *,int const) ;
 int stub2 (TYPE_3__*,int ,int ,int,int const) ;

__attribute__((used)) static int filter_frame(AVFilterContext *ctx, AVFrame **out, AVFrame *in, AVFrame *ref)
{
    BM3DContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    int p;

    *out = ff_get_video_buffer(outlink, outlink->w, outlink->h);
    if (!*out)
        return AVERROR(ENOMEM);
    av_frame_copy_props(*out, in);

    for (p = 0; p < s->nb_planes; p++) {
        const int nb_jobs = FFMAX(1, FFMIN(s->nb_threads, s->planeheight[p] / s->block_size));
        ThreadData td;

        if (!((1 << p) & s->planes) || ctx->is_disabled) {
            av_image_copy_plane((*out)->data[p], (*out)->linesize[p],
                                in->data[p], in->linesize[p],
                                s->planewidth[p], s->planeheight[p]);
            continue;
        }

        td.src = in->data[p];
        td.src_linesize = in->linesize[p];
        td.ref = ref->data[p];
        td.ref_linesize = ref->linesize[p];
        td.plane = p;
        ctx->internal->execute(ctx, filter_slice, &td, ((void*)0), nb_jobs);

        s->do_output(s, (*out)->data[p], (*out)->linesize[p], p, nb_jobs);
    }

    return 0;
}
