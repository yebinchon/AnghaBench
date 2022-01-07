
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* exec_info; } ;
typedef TYPE_2__ ccv_nnc_graph_t ;
struct TYPE_4__ {int rnum; } ;



int ccv_nnc_graph_exec_count(const ccv_nnc_graph_t* const graph)
{
 return graph->exec_info ? graph->exec_info->rnum : 0;
}
