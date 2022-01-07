
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int status_in; } ;
struct TYPE_9__ {unsigned int nb_outputs; TYPE_5__** outputs; } ;
struct TYPE_8__ {int status_in_pts; int status_in; int status_out; } ;
typedef TYPE_1__ AVFilterLink ;
typedef TYPE_2__ AVFilterContext ;


 int av_assert0 (int) ;
 int ff_avfilter_link_set_out_status (TYPE_1__*,int ,int ) ;
 int ff_filter_set_ready (TYPE_2__*,int) ;
 int ff_request_frame_to_filter (TYPE_5__*) ;

__attribute__((used)) static int forward_status_change(AVFilterContext *filter, AVFilterLink *in)
{
    unsigned out = 0, progress = 0;
    int ret;

    av_assert0(!in->status_out);
    if (!filter->nb_outputs) {

        return 0;
    }
    while (!in->status_out) {
        if (!filter->outputs[out]->status_in) {
            progress++;
            ret = ff_request_frame_to_filter(filter->outputs[out]);
            if (ret < 0)
                return ret;
        }
        if (++out == filter->nb_outputs) {
            if (!progress) {


                ff_avfilter_link_set_out_status(in, in->status_in, in->status_in_pts);
                return 0;
            }
            progress = 0;
            out = 0;
        }
    }
    ff_filter_set_ready(filter, 200);
    return 0;
}
