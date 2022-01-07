
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {int w; int h; TYPE_1__* dst; } ;
struct TYPE_16__ {int * linesize; int * data; } ;
struct TYPE_15__ {int chroma; int vsub; int hsub; int luma; } ;
struct TYPE_14__ {TYPE_4__** outputs; TYPE_2__* priv; } ;
typedef TYPE_2__ SabContext ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVFilterLink ;


 int AVERROR (int ) ;
 int AV_CEIL_RSHIFT (int,int ) ;
 int ENOMEM ;
 int av_frame_copy_props (TYPE_3__*,TYPE_3__*) ;
 int av_frame_free (TYPE_3__**) ;
 int blur (int ,int ,int ,int ,int,int,int *) ;
 int ff_filter_frame (TYPE_4__*,TYPE_3__*) ;
 TYPE_3__* ff_get_video_buffer (TYPE_4__*,int,int) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *inpic)
{
    SabContext *s = inlink->dst->priv;
    AVFilterLink *outlink = inlink->dst->outputs[0];
    AVFrame *outpic;

    outpic = ff_get_video_buffer(outlink, outlink->w, outlink->h);
    if (!outpic) {
        av_frame_free(&inpic);
        return AVERROR(ENOMEM);
    }
    av_frame_copy_props(outpic, inpic);

    blur(outpic->data[0], outpic->linesize[0], inpic->data[0], inpic->linesize[0],
         inlink->w, inlink->h, &s->luma);
    if (inpic->data[2]) {
        int cw = AV_CEIL_RSHIFT(inlink->w, s->hsub);
        int ch = AV_CEIL_RSHIFT(inlink->h, s->vsub);
        blur(outpic->data[1], outpic->linesize[1], inpic->data[1], inpic->linesize[1], cw, ch, &s->chroma);
        blur(outpic->data[2], outpic->linesize[2], inpic->data[2], inpic->linesize[2], cw, ch, &s->chroma);
    }

    av_frame_free(&inpic);
    return ff_filter_frame(outlink, outpic);
}
