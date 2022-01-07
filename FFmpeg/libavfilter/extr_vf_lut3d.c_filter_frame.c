
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* dst; } ;
struct TYPE_6__ {TYPE_2__** outputs; } ;
typedef int AVFrame ;
typedef TYPE_2__ AVFilterLink ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int * apply_lut (TYPE_2__*,int *) ;
 int ff_filter_frame (TYPE_2__*,int *) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterLink *outlink = inlink->dst->outputs[0];
    AVFrame *out = apply_lut(inlink, in);
    if (!out)
        return AVERROR(ENOMEM);
    return ff_filter_frame(outlink, out);
}
