
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_6__* exec_info; } ;
typedef TYPE_1__ ccv_nnc_graph_t ;
struct TYPE_8__ {scalar_t__ d; TYPE_1__* const graph; } ;
typedef TYPE_2__ ccv_nnc_graph_exec_t ;
struct TYPE_9__ {int const input_size; int const output_size; int* input_flags; int* output_flags; } ;
typedef TYPE_3__ ccv_nnc_graph_exec_info_t ;
struct TYPE_10__ {scalar_t__ rnum; } ;


 int assert (int) ;
 scalar_t__ cccalloc (int const,int) ;
 scalar_t__ ccv_array_get (TYPE_6__*,scalar_t__) ;
 int memcpy (int*,int const* const,int) ;

void ccv_nnc_graph_exec_set_io_flags(ccv_nnc_graph_t* const graph, const ccv_nnc_graph_exec_t exec, const int* const input_flags, const int input_flag_size, const int* const output_flags, const int output_flag_size)
{
 assert(exec.d < graph->exec_info->rnum);
 assert(exec.graph == graph);
 ccv_nnc_graph_exec_info_t* const info = (ccv_nnc_graph_exec_info_t*)ccv_array_get(graph->exec_info, exec.d);
 assert(input_flag_size <= info->input_size);
 assert(output_flag_size <= info->output_size);
 if (info->input_size + info->output_size == 0)
  return;
 if (!info->input_flags)
 {
  info->input_flags = (int*)cccalloc(info->input_size + info->output_size, sizeof(int));
  info->output_flags = info->input_flags + info->input_size;
 }
 if (input_flag_size > 0)
  memcpy(info->input_flags, input_flags, sizeof(int) * input_flag_size);
 if (output_flag_size > 0)
  memcpy(info->output_flags, output_flags, sizeof(int) * output_flag_size);
}
