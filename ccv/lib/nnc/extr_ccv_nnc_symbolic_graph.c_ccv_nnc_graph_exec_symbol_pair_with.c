
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_7__* exec_symbol_info; struct TYPE_8__* pair; } ;
typedef TYPE_1__ ccv_nnc_symbolic_graph_t ;
struct TYPE_9__ {scalar_t__ d; TYPE_1__* const graph; } ;
typedef TYPE_2__ ccv_nnc_graph_exec_symbol_t ;
struct TYPE_10__ {scalar_t__ pair_ref; } ;
typedef TYPE_3__ ccv_nnc_graph_exec_symbol_info_t ;
struct TYPE_11__ {scalar_t__ rnum; } ;


 int assert (int) ;
 scalar_t__ ccv_array_get (TYPE_7__*,scalar_t__) ;

void ccv_nnc_graph_exec_symbol_pair_with(ccv_nnc_symbolic_graph_t* const graph, const ccv_nnc_graph_exec_symbol_t exec_symbol, const ccv_nnc_graph_exec_symbol_t pair_exec_symbol)
{
 assert(exec_symbol.graph == graph);
 assert(exec_symbol.d >= 0);
 assert(exec_symbol.d < graph->exec_symbol_info->rnum);
 assert(pair_exec_symbol.graph == graph || pair_exec_symbol.graph == graph->pair);
 assert(pair_exec_symbol.d >= 0);
 if (pair_exec_symbol.graph == graph)
  { assert(pair_exec_symbol.d < graph->exec_symbol_info->rnum); }
 else
  { assert(pair_exec_symbol.d < graph->pair->exec_symbol_info->rnum); }
 ccv_nnc_graph_exec_symbol_info_t* const exec_info = (ccv_nnc_graph_exec_symbol_info_t*)ccv_array_get(graph->exec_symbol_info, exec_symbol.d);
 exec_info->pair_ref = pair_exec_symbol.d + 1;
}
