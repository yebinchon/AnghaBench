
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int time_base; TYPE_1__* src; } ;
struct TYPE_13__ {int pts; } ;
struct TYPE_11__ {int time_base; int pts; } ;
struct TYPE_12__ {TYPE_2__ fs; } ;
struct TYPE_10__ {TYPE_3__* priv; } ;
typedef TYPE_3__ QSVOverlayContext ;
typedef TYPE_4__ AVFrame ;
typedef TYPE_5__ AVFilterLink ;


 int av_rescale_q (int ,int ,int ) ;
 int ff_filter_frame (TYPE_5__*,TYPE_4__*) ;

__attribute__((used)) static int filter_callback(AVFilterLink *outlink, AVFrame *frame)
{
    QSVOverlayContext *s = outlink->src->priv;
    frame->pts = av_rescale_q(s->fs.pts,
                              s->fs.time_base, outlink->time_base);
    return ff_filter_frame(outlink, frame);
}
