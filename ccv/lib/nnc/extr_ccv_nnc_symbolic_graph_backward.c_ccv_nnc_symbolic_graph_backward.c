
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_19__ {int d; TYPE_4__* const graph; } ;
typedef TYPE_2__ ccv_nnc_tensor_symbol_t ;
struct TYPE_20__ {int alias_ref; } ;
typedef TYPE_3__ ccv_nnc_tensor_symbol_info_t ;
struct TYPE_21__ {TYPE_8__* tensor_symbol_info; TYPE_1__* exec_symbol_info; } ;
typedef TYPE_4__ ccv_nnc_symbolic_graph_t ;
typedef int ccv_nnc_symbolic_graph_backward_prep_t ;
typedef int ccv_nnc_graph_exec_symbol_t ;
struct TYPE_22__ {int rnum; } ;
struct TYPE_18__ {int rnum; } ;


 int _ccv_nnc_symbolic_graph_backward_gen (int *,TYPE_2__ const* const,int const,TYPE_2__ const* const,int const,TYPE_4__* const,TYPE_4__* const) ;
 int _ccv_nnc_symbolic_graph_backward_prep (TYPE_4__* const,int const* const,int const,int const* const,int const) ;
 int _ccv_nnc_symbolic_graph_backward_prep_free (int ) ;
 int _ccv_nnc_symbolic_graph_backward_prep_gen (int *,TYPE_2__ const* const,int const,TYPE_2__ const* const,int const,int ,int const* const,int const,int const* const,int const) ;
 int _ccv_nnc_symbolic_graph_backward_prep_prune_ops (int *,TYPE_2__ const* const,int const,TYPE_2__ const* const,int const,int const* const,int const,int const* const,int const) ;
 int assert (int) ;
 scalar_t__ ccv_array_get (TYPE_8__*,int ) ;

void ccv_nnc_symbolic_graph_backward(ccv_nnc_symbolic_graph_t* const graph, const ccv_nnc_tensor_symbol_t* const f_symbols, const int f_symbol_size, const ccv_nnc_tensor_symbol_t* const wrt_symbols, const int wrt_symbol_size, const ccv_nnc_graph_exec_symbol_t* const sources, const int source_size, const ccv_nnc_graph_exec_symbol_t* const destinations, const int destination_size)
{
 int i;

 for (i = 0; i < f_symbol_size; i++)
 {
  assert(f_symbols[i].graph == graph);
  assert(!((ccv_nnc_tensor_symbol_info_t*)ccv_array_get(graph->tensor_symbol_info, f_symbols[i].d))->alias_ref);
 }

 for (i = 0; i < wrt_symbol_size; i++)
 {
  assert(wrt_symbols[i].graph == graph);
  assert(!((ccv_nnc_tensor_symbol_info_t*)ccv_array_get(graph->tensor_symbol_info, wrt_symbols[i].d))->alias_ref);
 }
 const int exec_symbol_info_size = graph->exec_symbol_info->rnum;
 const int tensor_symbol_info_size = graph->tensor_symbol_info->rnum;
 assert(exec_symbol_info_size > 0);
 assert(tensor_symbol_info_size > 0);
 ccv_nnc_symbolic_graph_backward_prep_t backward_prep = _ccv_nnc_symbolic_graph_backward_prep(graph, sources, source_size, destinations, destination_size);
 _ccv_nnc_symbolic_graph_backward_prep_prune_ops(&backward_prep, f_symbols, f_symbol_size, wrt_symbols, wrt_symbol_size, sources, source_size, destinations, destination_size);
 _ccv_nnc_symbolic_graph_backward_prep_gen(&backward_prep, f_symbols, f_symbol_size, wrt_symbols, wrt_symbol_size, 0, sources, source_size, destinations, destination_size);
 _ccv_nnc_symbolic_graph_backward_gen(&backward_prep, f_symbols, f_symbol_size, wrt_symbols, wrt_symbol_size, graph, graph);
 _ccv_nnc_symbolic_graph_backward_prep_free(backward_prep);
}
