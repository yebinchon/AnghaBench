
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ alias_ref; } ;
typedef TYPE_1__ ccv_nnc_tensor_symbol_info_t ;
struct TYPE_8__ {int input_size; scalar_t__* inputs; int output_size; scalar_t__* outputs; } ;
typedef TYPE_2__ ccv_nnc_graph_exec_symbol_info_t ;
typedef int ccv_array_t ;
typedef int FILE ;


 int _ccv_nnc_symbolic_graph_dot_exec_symbol (int const,TYPE_2__ const* const,int const,int *) ;
 int _ccv_nnc_symbolic_graph_dot_tensor_symbol (scalar_t__,TYPE_1__ const* const,TYPE_1__ const* const,int ,int const,int *) ;
 scalar_t__ ccv_array_get (int const* const,scalar_t__) ;
 int fprintf (int *,char*,int const) ;
 int fputc (char,int *) ;
 int fputs (char*,int *) ;

__attribute__((used)) static void _ccv_nnc_symbolic_graph_dot_node(const ccv_nnc_graph_exec_symbol_info_t* const exec_symbol_info, const int index, const ccv_array_t* const tensor_symbol_info, const int flags, FILE* out)
{
 fprintf(out, "node%d [shape=record,label=\"", index);
 _ccv_nnc_symbolic_graph_dot_exec_symbol(index, exec_symbol_info, flags, out);
 int i;
 if (exec_symbol_info->input_size > 0)
 {
  fputs("|{Input", out);
  for (i = 0; i < exec_symbol_info->input_size; i++)
  {
   if (exec_symbol_info->inputs[i] >= 0)
   {
    fputc('|', out);
    const ccv_nnc_tensor_symbol_info_t* const tensor_symbol = (ccv_nnc_tensor_symbol_info_t*)ccv_array_get(tensor_symbol_info, exec_symbol_info->inputs[i]);
    const ccv_nnc_tensor_symbol_info_t* const alias_symbol = tensor_symbol->alias_ref ? (ccv_nnc_tensor_symbol_info_t*)ccv_array_get(tensor_symbol_info, tensor_symbol->alias_ref - 1) : 0;
    _ccv_nnc_symbolic_graph_dot_tensor_symbol(exec_symbol_info->inputs[i], tensor_symbol, alias_symbol, 0, flags, out);
   } else
    fputs("|-", out);
  }
  fputc('}', out);
 }
 if (exec_symbol_info->output_size > 0)
 {
  fputs("|{Output", out);
  for (i = 0; i < exec_symbol_info->output_size; i++)
  {
   if (exec_symbol_info->outputs[i] >= 0)
   {
    fputc('|', out);
    const ccv_nnc_tensor_symbol_info_t* const tensor_symbol = (ccv_nnc_tensor_symbol_info_t*)ccv_array_get(tensor_symbol_info, exec_symbol_info->outputs[i]);
    const ccv_nnc_tensor_symbol_info_t* const alias_symbol = tensor_symbol->alias_ref ? (ccv_nnc_tensor_symbol_info_t*)ccv_array_get(tensor_symbol_info, tensor_symbol->alias_ref - 1) : 0;
    _ccv_nnc_symbolic_graph_dot_tensor_symbol(exec_symbol_info->outputs[i], tensor_symbol, alias_symbol, 0, flags, out);
   } else
    fputs("|-", out);
  }
  fputc('}', out);
 }
 fputs("\"];\n", out);
}
