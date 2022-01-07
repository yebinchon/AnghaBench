
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int input_size; int const* inputs; int output_size; int const* outputs; } ;
typedef TYPE_1__ ccv_nnc_graph_exec_symbol_info_t ;


 int assert (TYPE_1__ const* const) ;

__attribute__((used)) static int _ccv_nnc_is_symbolic_graph_exec_input_or_output(const int p_ref, const ccv_nnc_graph_exec_symbol_info_t *const node)
{
 int i;
 int is_input = 0;
 assert(node);
 for (i = 0; i < node->input_size && !is_input; i++)
  if (p_ref == node->inputs[i])
   is_input = 1;
 int is_output = 0;
 for (i = 0; i < node->output_size && !is_output; i++)
  if (p_ref == node->outputs[i])
   is_output = 1;

 if (is_output)
  return 1;
 if (is_input)
  return -1;
 return 0;
}
