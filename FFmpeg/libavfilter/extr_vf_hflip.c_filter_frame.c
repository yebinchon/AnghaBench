
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_15__ ;


struct TYPE_21__ {TYPE_3__* out; TYPE_3__* in; } ;
typedef TYPE_2__ ThreadData ;
struct TYPE_24__ {TYPE_1__* internal; TYPE_4__** outputs; } ;
struct TYPE_23__ {int h; int format; int w; TYPE_5__* dst; } ;
struct TYPE_22__ {int * data; } ;
struct TYPE_20__ {int (* execute ) (TYPE_5__*,int ,TYPE_2__*,int *,int ) ;} ;
struct TYPE_19__ {int flags; } ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 int AVERROR (int ) ;
 int AVPALETTE_SIZE ;
 int AV_PIX_FMT_FLAG_PAL ;
 int ENOMEM ;
 int FFMIN (int ,int ) ;
 int av_frame_copy_props (TYPE_3__*,TYPE_3__*) ;
 int av_frame_free (TYPE_3__**) ;
 TYPE_15__* av_pix_fmt_desc_get (int ) ;
 int ff_filter_frame (TYPE_4__*,TYPE_3__*) ;
 int ff_filter_get_nb_threads (TYPE_5__*) ;
 TYPE_3__* ff_get_video_buffer (TYPE_4__*,int ,int ) ;
 int filter_slice ;
 int memcpy (int ,int ,int ) ;
 int stub1 (TYPE_5__*,int ,TYPE_2__*,int *,int ) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    ThreadData td;
    AVFrame *out;

    out = ff_get_video_buffer(outlink, outlink->w, outlink->h);
    if (!out) {
        av_frame_free(&in);
        return AVERROR(ENOMEM);
    }
    av_frame_copy_props(out, in);


    if (av_pix_fmt_desc_get(inlink->format)->flags & AV_PIX_FMT_FLAG_PAL)
        memcpy(out->data[1], in->data[1], AVPALETTE_SIZE);

    td.in = in, td.out = out;
    ctx->internal->execute(ctx, filter_slice, &td, ((void*)0), FFMIN(outlink->h, ff_filter_get_nb_threads(ctx)));

    av_frame_free(&in);
    return ff_filter_frame(outlink, out);
}
