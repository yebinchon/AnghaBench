
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int * outputs; TYPE_1__* internal; } ;
struct TYPE_14__ {TYPE_4__* dst; } ;
struct TYPE_13__ {int height; } ;
struct TYPE_12__ {int (* execute ) (TYPE_4__*,int ,TYPE_2__*,int *,int ) ;} ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int FFMIN (int ,int ) ;
 int av_frame_make_writable (TYPE_2__*) ;
 int do_despill_slice ;
 int ff_filter_frame (int ,TYPE_2__*) ;
 int ff_filter_get_nb_threads (TYPE_4__*) ;
 int stub1 (TYPE_4__*,int ,TYPE_2__*,int *,int ) ;

__attribute__((used)) static int filter_frame(AVFilterLink *link, AVFrame *frame)
{
    AVFilterContext *ctx = link->dst;
    int ret;

    if (ret = av_frame_make_writable(frame))
        return ret;

    if (ret = ctx->internal->execute(ctx, do_despill_slice, frame, ((void*)0), FFMIN(frame->height, ff_filter_get_nb_threads(ctx))))
        return ret;

    return ff_filter_frame(ctx->outputs[0], frame);
}
