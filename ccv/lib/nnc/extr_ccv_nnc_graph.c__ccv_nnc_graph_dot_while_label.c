
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ccv_nnc_tensor_multiview_t ;
struct TYPE_9__ {size_t index; size_t zone; } ;
typedef TYPE_2__ ccv_nnc_tensor_dot_t ;
struct TYPE_10__ {int* remap; int * rename_zone; int * rename_index; TYPE_2__* dots; } ;
typedef TYPE_3__ ccv_nnc_tensor_dot_recovery_t ;
typedef int ccv_nnc_graph_t ;
struct TYPE_8__ {int cmd; } ;
struct TYPE_11__ {int input_size; int output_size; scalar_t__* outputs; scalar_t__* inputs; TYPE_1__ cmd; } ;
typedef TYPE_4__ ccv_nnc_graph_exec_info_t ;
typedef int FILE ;


 scalar_t__ CCV_IS_TENSOR_MULTIVIEW (scalar_t__) ;
 int _ccv_nnc_graph_dot_tensor (int ,scalar_t__,int ,int const,int const,int *) ;
 int _ccv_nnc_graph_dot_tensor_multiview (int *,TYPE_3__ const,int const,int const,int*,int *) ;
 char* ccv_nnc_cmd_name (int ) ;
 int fprintf (int *,char*,int const) ;
 int fputc (char,int *) ;
 int fputs (char*,int *) ;

__attribute__((used)) static void _ccv_nnc_graph_dot_while_label(const ccv_nnc_graph_exec_info_t* const exec_info, const int exec_index, const ccv_nnc_tensor_dot_recovery_t recovery, const ccv_nnc_graph_t* const while_graph, const int flags, const int depth, FILE* out, int* tensor_index)
{
 int i;
 fprintf(out, "label=<<b>while%d </b>Command: ", exec_index);
 fputs(ccv_nnc_cmd_name(exec_info->cmd.cmd), out);
 fputs(">;\n", out);
 fprintf(out, "label%d [shape=record,label=\"{", exec_index);
 int k = *tensor_index;
 if (exec_info->input_size > 0)
 {
  fputs("{Input|{", out);
  for (i = 0; i < exec_info->input_size; i++)
  {
   if (i > 0)
    fputc('|', out);
   if (exec_info->inputs[i])
   {
    if (CCV_IS_TENSOR_MULTIVIEW(exec_info->inputs[i]))
     _ccv_nnc_graph_dot_tensor_multiview((ccv_nnc_tensor_multiview_t*)exec_info->inputs[i], recovery, flags, depth, &k, out);
    else {
     const ccv_nnc_tensor_dot_t* const tensor_dot = recovery.dots + recovery.remap[k];
     _ccv_nnc_graph_dot_tensor(recovery.rename_index[tensor_dot->index], exec_info->inputs[i], recovery.rename_zone[tensor_dot->zone], flags, depth, out);
     ++k;
    }
   } else
    fputc('-', out);
  }
  fputs("}}", out);
 }
 if (exec_info->output_size > 0)
 {
  if (exec_info->input_size > 0)
   fputs("|", out);
  fputs("{Output|{", out);
  for (i = 0; i < exec_info->output_size; i++)
  {
   if (i > 0)
    fputc('|', out);
   if (exec_info->outputs[i])
   {
    if (CCV_IS_TENSOR_MULTIVIEW(exec_info->outputs[i]))
     _ccv_nnc_graph_dot_tensor_multiview((ccv_nnc_tensor_multiview_t*)exec_info->outputs[i], recovery, flags, depth, &k, out);
    else {
     const ccv_nnc_tensor_dot_t* const tensor_dot = recovery.dots + recovery.remap[k];
     _ccv_nnc_graph_dot_tensor(recovery.rename_index[tensor_dot->index], exec_info->outputs[i], recovery.rename_zone[tensor_dot->zone], flags, depth, out);
     ++k;
    }
   } else
    fputc('-', out);
  }
  fputs("}}", out);
 }
 fputs("}\"];\n", out);
 *tensor_index = k;
}
