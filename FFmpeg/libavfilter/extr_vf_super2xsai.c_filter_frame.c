
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {TYPE_2__** outputs; } ;
struct TYPE_14__ {int h; int w; TYPE_3__* dst; } ;
struct TYPE_13__ {int * linesize; int * data; int height; int width; } ;
typedef TYPE_1__ AVFrame ;
typedef TYPE_2__ AVFilterLink ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_frame_copy_props (TYPE_1__*,TYPE_1__*) ;
 int av_frame_free (TYPE_1__**) ;
 int ff_filter_frame (TYPE_2__*,TYPE_1__*) ;
 TYPE_1__* ff_get_video_buffer (TYPE_2__*,int ,int ) ;
 int super2xsai (TYPE_3__*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *inpicref)
{
    AVFilterLink *outlink = inlink->dst->outputs[0];
    AVFrame *outpicref = ff_get_video_buffer(outlink, outlink->w, outlink->h);
    if (!outpicref) {
        av_frame_free(&inpicref);
        return AVERROR(ENOMEM);
    }
    av_frame_copy_props(outpicref, inpicref);
    outpicref->width = outlink->w;
    outpicref->height = outlink->h;

    super2xsai(inlink->dst, inpicref->data[0], inpicref->linesize[0],
               outpicref->data[0], outpicref->linesize[0],
               inlink->w, inlink->h);

    av_frame_free(&inpicref);
    return ff_filter_frame(outlink, outpicref);
}
