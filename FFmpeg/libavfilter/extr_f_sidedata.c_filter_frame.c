
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_17__ {TYPE_2__* priv; TYPE_4__** outputs; } ;
struct TYPE_16__ {TYPE_5__* dst; } ;
struct TYPE_15__ {TYPE_1__** side_data; int nb_side_data; } ;
struct TYPE_14__ {int type; int mode; } ;
struct TYPE_13__ {int type; } ;
typedef TYPE_2__ SideDataContext ;
typedef int AVFrameSideData ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;




 int av_assert0 (int ) ;
 int av_frame_free (TYPE_3__**) ;
 int * av_frame_get_side_data (TYPE_3__*,int) ;
 int av_frame_remove_side_data (TYPE_3__*,int) ;
 int ff_filter_frame (TYPE_4__*,TYPE_3__*) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *frame)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    SideDataContext *s = ctx->priv;
    AVFrameSideData *sd = ((void*)0);

    if (s->type != -1)
       sd = av_frame_get_side_data(frame, s->type);

    switch (s->mode) {
    case 128:
        if (sd) {
            return ff_filter_frame(outlink, frame);
        }
        break;
    case 129:
        if (s->type == -1) {
            while (frame->nb_side_data)
                av_frame_remove_side_data(frame, frame->side_data[0]->type);
        } else if (sd) {
            av_frame_remove_side_data(frame, s->type);
        }
        return ff_filter_frame(outlink, frame);
        break;
    default:
        av_assert0(0);
    };

    av_frame_free(&frame);

    return 0;
}
