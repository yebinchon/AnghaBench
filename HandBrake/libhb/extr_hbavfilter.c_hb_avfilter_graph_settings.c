
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* settings; } ;
typedef TYPE_1__ hb_avfilter_graph_t ;



const char * hb_avfilter_graph_settings(hb_avfilter_graph_t * graph)
{
    return graph->settings;
}
