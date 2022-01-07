
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_21__ {int w; int h; TYPE_1__* dst; } ;
struct TYPE_20__ {int * linesize; int * data; } ;
struct TYPE_18__ {int filter_context; int threshold; } ;
struct TYPE_17__ {int filter_context; int threshold; } ;
struct TYPE_19__ {TYPE_3__ chroma; TYPE_2__ luma; int vsub; int hsub; } ;
struct TYPE_16__ {TYPE_6__** outputs; TYPE_4__* priv; } ;
typedef TYPE_4__ SmartblurContext ;
typedef TYPE_5__ AVFrame ;
typedef TYPE_6__ AVFilterLink ;


 int AVERROR (int ) ;
 int AV_CEIL_RSHIFT (int,int ) ;
 int ENOMEM ;
 int av_frame_copy_props (TYPE_5__*,TYPE_5__*) ;
 int av_frame_free (TYPE_5__**) ;
 int blur (int ,int ,int ,int ,int,int,int ,int ) ;
 int ff_filter_frame (TYPE_6__*,TYPE_5__*) ;
 TYPE_5__* ff_get_video_buffer (TYPE_6__*,int,int) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *inpic)
{
    SmartblurContext *s = inlink->dst->priv;
    AVFilterLink *outlink = inlink->dst->outputs[0];
    AVFrame *outpic;
    int cw = AV_CEIL_RSHIFT(inlink->w, s->hsub);
    int ch = AV_CEIL_RSHIFT(inlink->h, s->vsub);

    outpic = ff_get_video_buffer(outlink, outlink->w, outlink->h);
    if (!outpic) {
        av_frame_free(&inpic);
        return AVERROR(ENOMEM);
    }
    av_frame_copy_props(outpic, inpic);

    blur(outpic->data[0], outpic->linesize[0],
         inpic->data[0], inpic->linesize[0],
         inlink->w, inlink->h, s->luma.threshold,
         s->luma.filter_context);

    if (inpic->data[2]) {
        blur(outpic->data[1], outpic->linesize[1],
             inpic->data[1], inpic->linesize[1],
             cw, ch, s->chroma.threshold,
             s->chroma.filter_context);
        blur(outpic->data[2], outpic->linesize[2],
             inpic->data[2], inpic->linesize[2],
             cw, ch, s->chroma.threshold,
             s->chroma.filter_context);
    }

    av_frame_free(&inpic);
    return ff_filter_frame(outlink, outpic);
}
