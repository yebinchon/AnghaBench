
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int tensor_symbol_select_qs ;
typedef int tensor_bind_select_qs ;
typedef int tensor_bind_count_qs ;
typedef int sqlite3_stmt ;
typedef int sqlite3 ;
typedef int graph_select_qs ;
typedef int exec_symbol_select_qs ;
struct TYPE_17__ {void* type; int dim; void* datatype; void* format; } ;
typedef TYPE_3__ ccv_nnc_tensor_param_t ;
struct TYPE_16__ {int * graph; void* d; } ;
struct TYPE_18__ {TYPE_6__* tensor; TYPE_2__ symbol; } ;
typedef TYPE_4__ ccv_nnc_tensor_bind_t ;
typedef int ccv_nnc_symbolic_graph_t ;
struct TYPE_19__ {int const rnum; } ;
typedef TYPE_5__ ccv_array_t ;
struct TYPE_15__ {int u8; } ;
struct TYPE_20__ {TYPE_1__ data; } ;


 void* CCV_NNC_NO_TENSOR_SYMBOL ;
 int CCV_TENSOR_CPU_MEMORY ;
 scalar_t__ CCV_TENSOR_GET_MEMORY (void*) ;
 scalar_t__ CCV_TENSOR_GPU_MEMORY ;
 int SQLITE_ENFORCE (int) ;
 scalar_t__ SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int _ccv_nnc_symbolic_graph_read (int const,int *,int *,int *,int * const) ;
 int _ccv_nnc_symbolic_graph_rewire (TYPE_5__* const,int *) ;
 int assert (int) ;
 scalar_t__ ccmalloc (int) ;
 int ccv_array_free (TYPE_5__* const) ;
 scalar_t__ ccv_array_get (TYPE_5__* const,int const) ;
 TYPE_5__* ccv_array_new (int,int,int ) ;
 int ccv_array_push (TYPE_5__* const,int * const*) ;
 int ccv_min (size_t,int ) ;
 int * ccv_nnc_symbolic_graph_new () ;
 size_t ccv_nnc_tensor_data_size (TYPE_3__) ;
 TYPE_6__* ccv_nnc_tensor_new (int ,TYPE_3__,int ) ;
 int cumemcpy (int ,void*,void const* const,int ,int ) ;
 int memcpy (int ,void const* const,int ) ;
 int memset (int ,int ,int) ;
 int sqlite3_close (int *) ;
 void* sqlite3_column_blob (int *,int) ;
 int sqlite3_column_bytes (int *,int) ;
 void* sqlite3_column_int (int *,int) ;
 int sqlite3_finalize (int *) ;
 scalar_t__ sqlite3_open (char const* const,int **) ;
 scalar_t__ sqlite3_prepare_v2 (int *,char const*,int,int **,int ) ;
 scalar_t__ sqlite3_step (int *) ;

void ccv_nnc_symbolic_graph_read(const char* const fn, ccv_nnc_symbolic_graph_t** const graph_ref, ccv_nnc_tensor_bind_t** const tensor_binds_ref, int* const tensor_bind_size_ref)
{
 sqlite3* conn = 0;
 if (SQLITE_OK != sqlite3_open(fn, &conn))
  return;
 ccv_array_t* const repo = ccv_array_new(sizeof(ccv_nnc_symbolic_graph_t*), 1, 0);
 const char graph_select_qs[] =
  "SELECT graph, tensor_symbol_size, exec_symbol_size, sources, destinations, sub_graphs, pair, p, p_idx, "
  "exec_idx, breakpoint_size, breakpoints, backward_tensor_symbol_size, "
  "backward_tensor_symbol_idx, backward_exec_symbol_size, backward_exec_symbol_idx, "
  "parallel_count, parallel_tensor_symbol_size, parallel_tensor_symbol_idx, "
  "parallel_exec_symbol_size, parallel_exec_symbol_idx FROM graph ORDER BY graph";
 sqlite3_stmt* graph_select_stmt = 0;
 SQLITE_ENFORCE(SQLITE_OK == sqlite3_prepare_v2(conn, graph_select_qs, sizeof(graph_select_qs), &graph_select_stmt, 0));
 sqlite3_stmt* tensor_symbol_select_stmt = 0;
 const char tensor_symbol_select_qs[] =
  "SELECT id, assign_ref, r_assign_ref, bypass_ref, r_bypass_ref, p_ref, alias_ref, pair_ref, flags, ofs, inc, "
  "s_ref, name, type, format, datatype, dim FROM tensor_symbol WHERE graph=$graph ORDER BY id";
 SQLITE_ENFORCE(SQLITE_OK == sqlite3_prepare_v2(conn, tensor_symbol_select_qs, sizeof(tensor_symbol_select_qs), &tensor_symbol_select_stmt, 0));
 const char exec_symbol_select_qs[] =
  "SELECT id, input_size, output_size, graph_ref_size, flags, pair_ref, inputs, outputs, outgoings, "
  "name, cmd_cmd, cmd_backend, cmd_algorithm, cmd_info, hint, graph_ref, case_of_expr, case_of_flags, "
  "case_of_argument_offset, case_of_argument_size, p_while_expr, p_while_input_size, p_while_inputs "
  "FROM graph_exec_symbol WHERE graph=$graph ORDER BY id";
 sqlite3_stmt* exec_symbol_select_stmt = 0;
 SQLITE_ENFORCE(SQLITE_OK == sqlite3_prepare_v2(conn, exec_symbol_select_qs, sizeof(exec_symbol_select_qs), &exec_symbol_select_stmt, 0));
 while (SQLITE_ROW == sqlite3_step(graph_select_stmt))
 {
  ccv_nnc_symbolic_graph_t* const graph = ccv_nnc_symbolic_graph_new();
  const int graph_idx = sqlite3_column_int(graph_select_stmt, 0);
  assert(graph_idx == repo->rnum);
  ccv_array_push(repo, &graph);
  _ccv_nnc_symbolic_graph_read(graph_idx, graph_select_stmt, tensor_symbol_select_stmt, exec_symbol_select_stmt, graph);
 }
 int i;
 for (i = 0; i < repo->rnum; i++)
  _ccv_nnc_symbolic_graph_rewire(repo, *(ccv_nnc_symbolic_graph_t**)ccv_array_get(repo, i));
 *graph_ref = (repo->rnum > 0) ? *(ccv_nnc_symbolic_graph_t**)ccv_array_get(repo, 0) : 0;
 assert((tensor_bind_size_ref && tensor_binds_ref) || (!tensor_bind_size_ref && !tensor_binds_ref));
 if (tensor_bind_size_ref && tensor_binds_ref)
 {
  const char tensor_bind_count_qs[] =
   "SELECT COUNT(*) FROM tensor_bind";
  sqlite3_stmt* tensor_bind_count_stmt = 0;
  SQLITE_ENFORCE(SQLITE_OK == sqlite3_prepare_v2(conn, tensor_bind_count_qs, sizeof(tensor_bind_count_qs), &tensor_bind_count_stmt, 0));
  sqlite3_step(tensor_bind_count_stmt);
  const int tensor_bind_size = *tensor_bind_size_ref = sqlite3_column_int(tensor_bind_count_stmt, 0);
  sqlite3_finalize(tensor_bind_count_stmt);

  if (!tensor_bind_size)
   *tensor_binds_ref = 0;
  else {
   const char tensor_bind_select_qs[] =
    "SELECT id, graph, type, format, datatype, dim, data FROM tensor_bind";
   sqlite3_stmt* tensor_bind_select_stmt = 0;
   ccv_nnc_tensor_bind_t* const tensor_binds = *tensor_binds_ref = (ccv_nnc_tensor_bind_t*)ccmalloc(sizeof(ccv_nnc_tensor_bind_t) * tensor_bind_size);
   SQLITE_ENFORCE(SQLITE_OK == sqlite3_prepare_v2(conn, tensor_bind_select_qs, sizeof(tensor_bind_select_qs), &tensor_bind_select_stmt, 0));
   for (i = 0; SQLITE_ROW == sqlite3_step(tensor_bind_select_stmt); i++)
   {
    assert(i < tensor_bind_size);
    tensor_binds[i].symbol.d = sqlite3_column_int(tensor_bind_select_stmt, 0);
    const int graph_idx = sqlite3_column_int(tensor_bind_select_stmt, 1);
    assert(graph_idx < repo->rnum);
    tensor_binds[i].symbol.graph = (graph_idx >= 0) ? *(ccv_nnc_symbolic_graph_t**)ccv_array_get(repo, graph_idx) : 0;
    ccv_nnc_tensor_param_t info;
    info.type = sqlite3_column_int(tensor_bind_select_stmt, 2);
    info.format = sqlite3_column_int(tensor_bind_select_stmt, 3);
    info.datatype = sqlite3_column_int(tensor_bind_select_stmt, 4);
    const int* const dim = sqlite3_column_blob(tensor_bind_select_stmt, 5);
    memset(info.dim, 0, sizeof(info.dim));
    if (dim)
     memcpy(info.dim, dim, ccv_min(sizeof(info.dim), sqlite3_column_bytes(tensor_bind_select_stmt, 5)));
    const void* const data = sqlite3_column_blob(tensor_bind_select_stmt, 6);
    if (!data)
     tensor_binds[i].tensor = 0;
    else {
     tensor_binds[i].tensor = ccv_nnc_tensor_new(0, info, 0);
     size_t data_size = ccv_nnc_tensor_data_size(info);






     memcpy(tensor_binds[i].tensor->data.u8, data, ccv_min(data_size, sqlite3_column_bytes(tensor_bind_select_stmt, 6)));

    }
   }
   for (; i < tensor_bind_size; i++)
   {
    tensor_binds[i].symbol.d = CCV_NNC_NO_TENSOR_SYMBOL;
    tensor_binds[i].symbol.graph = 0;
    tensor_binds[i].tensor = 0;
   }
   sqlite3_finalize(tensor_bind_select_stmt);
  }
 }
 ccv_array_free(repo);
 sqlite3_finalize(graph_select_stmt);
 sqlite3_finalize(tensor_symbol_select_stmt);
 sqlite3_finalize(exec_symbol_select_stmt);
 sqlite3_close(conn);
}
