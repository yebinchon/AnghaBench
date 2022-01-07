
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int ccv_nnc_tensor_dot_recovery_t ;
struct TYPE_13__ {TYPE_3__ const* const exec_info; int streams; TYPE_3__* sub_graphs; } ;
typedef TYPE_1__ ccv_nnc_graph_t ;
struct TYPE_14__ {int flags; int graph_ref_size; TYPE_3__ const* const outgoings; } ;
typedef TYPE_2__ const ccv_nnc_graph_exec_info_t ;
struct TYPE_15__ {int rnum; } ;
typedef TYPE_3__ ccv_array_t ;
typedef int FILE ;


 int CCV_NNC_GRAPH_EXEC_CASE_OF ;
 int CCV_NNC_GRAPH_EXEC_P_WHILE ;
 int const* CCV_NNC_GRAPH_REF (TYPE_2__ const* const) ;
 int _ccv_nnc_graph_dot_case_of_label (TYPE_2__ const* const,int,int const,int const,int const,int *,int*) ;
 int _ccv_nnc_graph_dot_node (TYPE_2__ const*,int,int ,int ,int const,int const,int *,int*) ;
 int _ccv_nnc_graph_dot_while_label (TYPE_2__ const* const,int,int const,TYPE_1__ const* const,int const,int const,int *,int*) ;
 int _ccv_nnc_graph_tensor_dot_recovery (TYPE_1__ const* const) ;
 int _ccv_nnc_graph_tensor_dot_recovery_free (int ) ;
 int ccfree (int*) ;
 scalar_t__ ccmalloc (int) ;
 scalar_t__ ccv_array_get (TYPE_3__ const* const,int const) ;
 int fprintf (int *,char*,int,int,...) ;
 int fputs (char*,int *) ;

__attribute__((used)) static void _ccv_nnc_graph_dot_sub_graphs(const ccv_nnc_graph_exec_info_t* const exec_info, const ccv_nnc_tensor_dot_recovery_t p_recovery, const ccv_array_t* const sub_graphs, const int flags, const int depth, FILE* out, int* tensor_index, int* exec_index)
{
 if (exec_info->flags & CCV_NNC_GRAPH_EXEC_P_WHILE)
 {
  fprintf(out, "subgraph cluster%d {\nstyle=\"rounded\";\nnode%d [style=invisible];\n", *exec_index, *exec_index);
  const ccv_nnc_graph_t* const while_graph = *(ccv_nnc_graph_t**)ccv_array_get(sub_graphs, CCV_NNC_GRAPH_REF(exec_info)[0] - 1);

  _ccv_nnc_graph_dot_while_label(exec_info, *exec_index, p_recovery, while_graph, flags, depth - 1 , out, tensor_index);
 } else if (exec_info->flags & CCV_NNC_GRAPH_EXEC_CASE_OF) {
  fprintf(out, "subgraph cluster%d {\nstyle=\"rounded\";\nnode%d [style=invisible];\n", *exec_index, *exec_index);
  _ccv_nnc_graph_dot_case_of_label(exec_info, *exec_index, p_recovery, flags, depth - 1 , out, tensor_index);
 }
 ++(*exec_index);
 int p;
 for (p = 0; p < exec_info->graph_ref_size; p++)
 {
  if (exec_info->flags & CCV_NNC_GRAPH_EXEC_CASE_OF)
  {
   fprintf(out, "subgraph cluster%d {\nstyle=\"rounded\";\nnode%d [style=invisible];\nlabel=\"\"\n", *exec_index, *exec_index);
   ++(*exec_index);
  }
  const ccv_nnc_graph_t* const graph = *(ccv_nnc_graph_t**)ccv_array_get(sub_graphs, CCV_NNC_GRAPH_REF(exec_info)[p] - 1);
  ccv_nnc_tensor_dot_recovery_t recovery = _ccv_nnc_graph_tensor_dot_recovery(graph);
  int i, j;
  int k = 0;
  int* node_id = (int*)ccmalloc(sizeof(int) * graph->exec_info->rnum);

  for (i = 0; i < graph->exec_info->rnum; i++)
  {
   node_id[i] = *exec_index;
   ccv_nnc_graph_exec_info_t* exec_info = (ccv_nnc_graph_exec_info_t*)ccv_array_get(graph->exec_info, i);
   if (CCV_NNC_GRAPH_REF(exec_info)[0])
    _ccv_nnc_graph_dot_sub_graphs(exec_info, recovery, graph->sub_graphs, flags, depth + 1, out, &k, exec_index);
   else {
    _ccv_nnc_graph_dot_node(exec_info, *exec_index, graph->streams, recovery, flags, depth, out, &k);
    ++(*exec_index);
   }
  }

  for (i = 0; i < graph->exec_info->rnum; i++)
  {
   ccv_nnc_graph_exec_info_t* exec_info = (ccv_nnc_graph_exec_info_t*)ccv_array_get(graph->exec_info, i);
   if (exec_info->outgoings)
    for (j = 0; j < exec_info->outgoings->rnum; j++)
    {
     const int outgoing_idx = *(int*)ccv_array_get(exec_info->outgoings, j);
     const ccv_nnc_graph_exec_info_t* const outgoing_info = (ccv_nnc_graph_exec_info_t*)ccv_array_get(graph->exec_info, outgoing_idx);

     if (CCV_NNC_GRAPH_REF(exec_info)[0] && CCV_NNC_GRAPH_REF(outgoing_info)[0])
      fprintf(out, "node%d -> node%d [ltail=cluster%d,lhead=cluster%d];\n", node_id[i], node_id[outgoing_idx], node_id[i], node_id[outgoing_idx]);
     else if (CCV_NNC_GRAPH_REF(exec_info)[0] && !CCV_NNC_GRAPH_REF(outgoing_info)[0])
      fprintf(out, "node%d -> node%d [ltail=cluster%d];\n", node_id[i], node_id[outgoing_idx], node_id[i]);
     else if (!CCV_NNC_GRAPH_REF(exec_info)[0] && CCV_NNC_GRAPH_REF(outgoing_info)[0])
      fprintf(out, "node%d -> node%d [lhead=cluster%d];\n", node_id[i], node_id[outgoing_idx], node_id[outgoing_idx]);
     else
      fprintf(out, "node%d -> node%d;\n", node_id[i], node_id[outgoing_idx]);
    }
  }
  fputs("}\n", out);
  _ccv_nnc_graph_tensor_dot_recovery_free(recovery);
  ccfree(node_id);
 }

 if (exec_info->flags & CCV_NNC_GRAPH_EXEC_CASE_OF)
  fputs("}\n", out);
}
