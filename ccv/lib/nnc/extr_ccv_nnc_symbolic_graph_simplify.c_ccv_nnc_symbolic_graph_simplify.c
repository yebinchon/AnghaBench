
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ccv_nnc_tensor_symbol_t ;
typedef int ccv_nnc_symbolic_graph_t ;
typedef int ccv_nnc_symbolic_graph_simplify_t ;
typedef int ccv_nnc_graph_exec_symbol_t ;






 int _ccv_nnc_symbolic_graph_common_subexpression_elimination (int * const,int const* const,int const) ;
 int _ccv_nnc_symbolic_graph_data_transfer_opt (int * const,int const* const,int const) ;
 int _ccv_nnc_symbolic_graph_ops_fusion (int * const,int const* const,int const) ;
 int _ccv_nnc_symbolic_graph_pruning (int * const,int const* const,int const) ;
 int _ccv_nnc_symbolic_graph_simplify_apply (int * const) ;
 int _ccv_nnc_symbolic_graph_simplify_free (int * const) ;
 int * _ccv_nnc_symbolic_graph_simplify_new (int * const,int const* const,int const,int const* const,int const) ;

void ccv_nnc_symbolic_graph_simplify(ccv_nnc_symbolic_graph_t* const graph, const int* const passes, const int pass_size, const ccv_nnc_tensor_symbol_t* const outputs, const int output_size, const ccv_nnc_graph_exec_symbol_t* const sources, const int source_size, const ccv_nnc_graph_exec_symbol_t* const destinations, const int destination_size)
{
 ccv_nnc_symbolic_graph_simplify_t* const simplify = _ccv_nnc_symbolic_graph_simplify_new(graph, sources, source_size, destinations, destination_size);
 int i;
 for (i = 0; i < pass_size; i++)
  switch (passes[i])
  {
   case 131:
    _ccv_nnc_symbolic_graph_common_subexpression_elimination(simplify, outputs, output_size);
    break;
   case 130:
    _ccv_nnc_symbolic_graph_data_transfer_opt(simplify, outputs, output_size);
    break;
   case 129:
    _ccv_nnc_symbolic_graph_pruning(simplify, outputs, output_size);
    break;
   case 128:
    _ccv_nnc_symbolic_graph_ops_fusion(simplify, outputs, output_size);
    break;
  }
 _ccv_nnc_symbolic_graph_simplify_apply(simplify);
 _ccv_nnc_symbolic_graph_simplify_free(simplify);
}
