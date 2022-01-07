
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int frame_count_out; TYPE_1__* dst; } ;
struct TYPE_12__ {int pts; } ;
struct TYPE_11__ {int is_disabled; } ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterLink ;


 int ff_inlink_evaluate_timeline_at_frame (TYPE_3__*,TYPE_2__ const*) ;
 int ff_inlink_process_commands (TYPE_3__*,TYPE_2__ const*) ;
 int ff_update_link_current_pts (TYPE_3__*,int ) ;

__attribute__((used)) static void consume_update(AVFilterLink *link, const AVFrame *frame)
{
    ff_update_link_current_pts(link, frame->pts);
    ff_inlink_process_commands(link, frame);
    link->dst->is_disabled = !ff_inlink_evaluate_timeline_at_frame(link, frame);
    link->frame_count_out++;
}
