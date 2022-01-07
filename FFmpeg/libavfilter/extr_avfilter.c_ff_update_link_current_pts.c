
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_4__ {scalar_t__ age_index; scalar_t__ graph; int time_base; int current_pts_us; scalar_t__ current_pts; } ;
typedef TYPE_1__ AVFilterLink ;


 scalar_t__ AV_NOPTS_VALUE ;
 int AV_TIME_BASE_Q ;
 int av_rescale_q (scalar_t__,int ,int ) ;
 int ff_avfilter_graph_update_heap (scalar_t__,TYPE_1__*) ;

void ff_update_link_current_pts(AVFilterLink *link, int64_t pts)
{
    if (pts == AV_NOPTS_VALUE)
        return;
    link->current_pts = pts;
    link->current_pts_us = av_rescale_q(pts, link->time_base, AV_TIME_BASE_Q);

    if (link->graph && link->age_index >= 0)
        ff_avfilter_graph_update_heap(link->graph, link);
}
