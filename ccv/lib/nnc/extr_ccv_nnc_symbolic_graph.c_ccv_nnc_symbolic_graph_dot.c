
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_4__* exec_symbol_info; int tensor_symbol_info; int sub_graphs; } ;
typedef TYPE_1__ ccv_nnc_symbolic_graph_t ;
struct TYPE_8__ {scalar_t__ graph_ref_size; TYPE_4__* outgoings; int flags; } ;
typedef TYPE_2__ ccv_nnc_graph_exec_symbol_info_t ;
struct TYPE_9__ {int rnum; } ;
typedef int FILE ;


 scalar_t__ CCV_NNC_GRAPH_EXEC_IS_DEAD (int ) ;
 int _ccv_nnc_symbolic_graph_dot_node (TYPE_2__ const* const,int,int ,int const,int *) ;
 int _ccv_nnc_symbolic_graph_dot_sub_graphs (TYPE_2__ const* const,int ,int ,int const,int *,int*) ;
 int ccfree (int*) ;
 scalar_t__ ccmalloc (int) ;
 scalar_t__ ccv_array_get (TYPE_4__*,int const) ;
 int fprintf (int *,char*,int,int,...) ;
 int fputs (char*,int *) ;

void ccv_nnc_symbolic_graph_dot(const ccv_nnc_symbolic_graph_t* const graph, const int flags, FILE* out)
{
 fputs("digraph G {\ncompound=true;\n", out);
 int i, j;
 int c = 0;
 int* node_id = (int*)ccmalloc(sizeof(int) * graph->exec_symbol_info->rnum);

 for (i = 0; i < graph->exec_symbol_info->rnum; i++)
 {
  node_id[i] = c;
  const ccv_nnc_graph_exec_symbol_info_t* const exec_symbol_info = (ccv_nnc_graph_exec_symbol_info_t*)ccv_array_get(graph->exec_symbol_info, i);

  if (CCV_NNC_GRAPH_EXEC_IS_DEAD(exec_symbol_info->flags))
   continue;
  if (exec_symbol_info->graph_ref_size)
   _ccv_nnc_symbolic_graph_dot_sub_graphs(exec_symbol_info, graph->tensor_symbol_info, graph->sub_graphs, flags, out, &c);
  else {
   _ccv_nnc_symbolic_graph_dot_node(exec_symbol_info, c, graph->tensor_symbol_info, flags, out);
   ++c;
  }
 }

 for (i = 0; i < graph->exec_symbol_info->rnum; i++)
 {
  const ccv_nnc_graph_exec_symbol_info_t* exec_symbol_info = (ccv_nnc_graph_exec_symbol_info_t*)ccv_array_get(graph->exec_symbol_info, i);

  if (CCV_NNC_GRAPH_EXEC_IS_DEAD(exec_symbol_info->flags))
   continue;
  if (exec_symbol_info->outgoings)
   for (j = 0; j < exec_symbol_info->outgoings->rnum; j++)
   {
    const int outgoing_idx = *(int*)ccv_array_get(exec_symbol_info->outgoings, j);
    const ccv_nnc_graph_exec_symbol_info_t* const outgoing_symbol_info = (ccv_nnc_graph_exec_symbol_info_t*)ccv_array_get(graph->exec_symbol_info, outgoing_idx);

    if (exec_symbol_info->graph_ref_size && outgoing_symbol_info->graph_ref_size)
     fprintf(out, "node%d -> node%d [ltail=cluster%d,lhead=cluster%d];\n", node_id[i], node_id[outgoing_idx], node_id[i], node_id[outgoing_idx]);
    else if (exec_symbol_info->graph_ref_size && !outgoing_symbol_info->graph_ref_size)
     fprintf(out, "node%d -> node%d [ltail=cluster%d];\n", node_id[i], node_id[outgoing_idx], node_id[i]);
    else if (!exec_symbol_info->graph_ref_size && outgoing_symbol_info->graph_ref_size)
     fprintf(out, "node%d -> node%d [lhead=cluster%d];\n", node_id[i], node_id[outgoing_idx], node_id[outgoing_idx]);
    else
     fprintf(out, "node%d -> node%d;\n", node_id[i], node_id[outgoing_idx]);
   }
 }
 fputs("}\n", out);
 ccfree(node_id);
}
