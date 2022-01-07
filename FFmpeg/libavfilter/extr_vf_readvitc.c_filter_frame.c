
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {TYPE_1__* priv; TYPE_3__** outputs; } ;
struct TYPE_12__ {int h; int w; TYPE_4__* dst; } ;
struct TYPE_11__ {int metadata; int * linesize; int * data; } ;
struct TYPE_10__ {int line_data; int tcbuf; } ;
typedef TYPE_1__ ReadVitcContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int av_dict_set (int *,char*,char*,int ) ;
 int ff_filter_frame (TYPE_3__*,TYPE_2__*) ;
 char* make_vitc_tc_string (int ,int ) ;
 int read_vitc_line (TYPE_1__*,int ,int ,int ,int ) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *frame)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    ReadVitcContext *s = ctx->priv;
    int found;

    found = read_vitc_line(s, frame->data[0], frame->linesize[0], inlink->w, inlink->h);
    av_dict_set(&frame->metadata, "lavfi.readvitc.found", (found ? "1" : "0"), 0);
    if (found)
        av_dict_set(&frame->metadata, "lavfi.readvitc.tc_str", make_vitc_tc_string(s->tcbuf, s->line_data), 0);

    return ff_filter_frame(outlink, frame);
}
