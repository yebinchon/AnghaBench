
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ inputs; } ;
struct TYPE_5__ {int flags; scalar_t__ output_size; scalar_t__ outputs; scalar_t__ input_size; scalar_t__ inputs; int * outgoings; scalar_t__ _heap_graph_ref; scalar_t__ name; TYPE_1__ p_while; } ;
typedef TYPE_2__ ccv_nnc_graph_exec_symbol_info_t ;
typedef int ccv_array_t ;


 int CCV_NNC_GRAPH_EXEC_P_WHILE ;
 int ccfree (scalar_t__) ;
 int ccv_array_free (int *) ;

__attribute__((used)) static inline void _ccv_nnc_graph_exec_symbol_free(ccv_nnc_graph_exec_symbol_info_t* const symbol_info, const int zeroing)
{
 if (symbol_info->name)
  ccfree(symbol_info->name);
 if (symbol_info->_heap_graph_ref)
  ccfree(symbol_info->_heap_graph_ref);
 ccv_array_t* outgoings = symbol_info->outgoings;
 if (outgoings)
  ccv_array_free(outgoings);

 if (symbol_info->inputs)
  ccfree(symbol_info->inputs);
 if (symbol_info->flags & CCV_NNC_GRAPH_EXEC_P_WHILE)
  if (symbol_info->p_while.inputs)
   ccfree(symbol_info->p_while.inputs);
 if (zeroing)
 {
  symbol_info->name = 0;
  symbol_info->_heap_graph_ref = 0;
  symbol_info->outgoings = 0;
  symbol_info->inputs = 0;
  symbol_info->input_size = 0;
  symbol_info->outputs = 0;
  symbol_info->output_size = 0;
 }
}
