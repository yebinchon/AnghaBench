
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int graph; } ;
struct TYPE_5__ {TYPE_1__ video_filters; } ;
typedef TYPE_2__ hb_work_private_t ;


 int hb_avfilter_graph_close (int *) ;

__attribute__((used)) static void close_video_filters(hb_work_private_t *pv)
{
    hb_avfilter_graph_close(&pv->video_filters.graph);
}
