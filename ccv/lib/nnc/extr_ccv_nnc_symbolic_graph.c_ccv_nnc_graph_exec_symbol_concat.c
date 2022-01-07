
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_10__ {TYPE_7__* exec_symbol_info; } ;
typedef TYPE_1__ ccv_nnc_symbolic_graph_t ;
struct TYPE_11__ {scalar_t__ d; TYPE_1__* const graph; } ;
typedef TYPE_2__ ccv_nnc_graph_exec_symbol_t ;
struct TYPE_12__ {TYPE_7__* outgoings; } ;
typedef TYPE_3__ ccv_nnc_graph_exec_symbol_info_t ;
struct TYPE_13__ {scalar_t__ rnum; } ;


 int assert (int) ;
 scalar_t__ ccv_array_get (TYPE_7__*,int) ;
 TYPE_7__* ccv_array_new (int,int,int ) ;
 int ccv_array_push (TYPE_7__*,int*) ;

int ccv_nnc_graph_exec_symbol_concat(ccv_nnc_symbolic_graph_t* const graph, const ccv_nnc_graph_exec_symbol_t source, const ccv_nnc_graph_exec_symbol_t destination)
{
 assert(graph == source.graph);
 assert(graph == destination.graph);
 assert(source.d < graph->exec_symbol_info->rnum);
 assert(destination.d < graph->exec_symbol_info->rnum);
 ccv_nnc_graph_exec_symbol_info_t* src_symbol_info = (ccv_nnc_graph_exec_symbol_info_t*)ccv_array_get(graph->exec_symbol_info, source.d);
 if (!src_symbol_info->outgoings)
  src_symbol_info->outgoings = ccv_array_new(sizeof(int32_t), 1, 0);
 else {
  int i;

  for (i = 0; i < src_symbol_info->outgoings->rnum; i++)
   if (*(int*)ccv_array_get(src_symbol_info->outgoings, i) == destination.d)
    return -1;
 }
 ccv_array_push(src_symbol_info->outgoings, &destination.d);
 return 0;
}
