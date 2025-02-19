
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int * inputs; TYPE_3__* priv; } ;
struct TYPE_12__ {TYPE_5__* src; scalar_t__ request_samples; } ;
struct TYPE_9__ {TYPE_2__* next; } ;
struct TYPE_11__ {TYPE_1__ root; } ;
struct TYPE_10__ {int frame; } ;
typedef TYPE_3__ FifoContext ;
typedef TYPE_4__ AVFilterLink ;


 int AVERROR_EOF ;
 int ff_filter_frame (TYPE_4__*,int ) ;
 int ff_request_frame (int ) ;
 int queue_pop (TYPE_3__*) ;
 int return_audio_frame (TYPE_5__*) ;

__attribute__((used)) static int request_frame(AVFilterLink *outlink)
{
    FifoContext *s = outlink->src->priv;
    int ret = 0;

    if (!s->root.next) {
        if ((ret = ff_request_frame(outlink->src->inputs[0])) < 0) {
            if (ret == AVERROR_EOF && outlink->request_samples)
                return return_audio_frame(outlink->src);
            return ret;
        }
        if (!s->root.next)
            return 0;
    }

    if (outlink->request_samples) {
        return return_audio_frame(outlink->src);
    } else {
        ret = ff_filter_frame(outlink, s->root.next->frame);
        queue_pop(s);
    }

    return ret;
}
