
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int frame_blocked_in; scalar_t__ frame_wanted_out; } ;
struct TYPE_9__ {int fifo; int status_out; scalar_t__ status_in; int min_samples; } ;
struct TYPE_8__ {unsigned int nb_inputs; unsigned int nb_outputs; TYPE_5__** outputs; TYPE_2__** inputs; } ;
typedef TYPE_1__ AVFilterContext ;


 int FFERROR_NOT_READY ;
 int av_assert1 (int) ;
 int ff_filter_frame_to_filter (TYPE_2__*) ;
 int ff_framequeue_queued_frames (int *) ;
 int ff_request_frame_to_filter (TYPE_5__*) ;
 int forward_status_change (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ samples_ready (TYPE_2__*,int ) ;

__attribute__((used)) static int ff_filter_activate_default(AVFilterContext *filter)
{
    unsigned i;

    for (i = 0; i < filter->nb_inputs; i++) {
        if (samples_ready(filter->inputs[i], filter->inputs[i]->min_samples)) {
            return ff_filter_frame_to_filter(filter->inputs[i]);
        }
    }
    for (i = 0; i < filter->nb_inputs; i++) {
        if (filter->inputs[i]->status_in && !filter->inputs[i]->status_out) {
            av_assert1(!ff_framequeue_queued_frames(&filter->inputs[i]->fifo));
            return forward_status_change(filter, filter->inputs[i]);
        }
    }
    for (i = 0; i < filter->nb_outputs; i++) {
        if (filter->outputs[i]->frame_wanted_out &&
            !filter->outputs[i]->frame_blocked_in) {
            return ff_request_frame_to_filter(filter->outputs[i]);
        }
    }
    return FFERROR_NOT_READY;
}
