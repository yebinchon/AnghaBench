
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int input_size; int const* inputs; } ;
typedef TYPE_1__ ccv_nnc_graph_exec_symbol_info_t ;



__attribute__((used)) static int _ccv_nnc_exec_inputs_contain(const ccv_nnc_graph_exec_symbol_info_t* const node, const int d)
{
 int i;
 for (i = 0; i < node->input_size; i++)
  if (node->inputs[i] == d)
   return 1;
 return 0;
}
