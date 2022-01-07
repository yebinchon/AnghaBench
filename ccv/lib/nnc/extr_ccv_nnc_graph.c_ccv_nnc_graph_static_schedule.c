
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ p; } ;
typedef TYPE_1__ ccv_nnc_graph_t ;


 int _ccv_nnc_graph_static_schedule (TYPE_1__* const,int const,int,int ) ;
 int assert (int) ;

void ccv_nnc_graph_static_schedule(ccv_nnc_graph_t* const graph, const int stream_type)
{
 assert(graph->p == 0);
 _ccv_nnc_graph_static_schedule(graph, stream_type, -1, 0);
}
