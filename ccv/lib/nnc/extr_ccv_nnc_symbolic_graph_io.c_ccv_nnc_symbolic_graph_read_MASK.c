#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tensor_symbol_select_qs ;
typedef  int /*<<< orphan*/  tensor_bind_select_qs ;
typedef  int /*<<< orphan*/  tensor_bind_count_qs ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  graph_select_qs ;
typedef  int /*<<< orphan*/  exec_symbol_select_qs ;
struct TYPE_17__ {void* type; int /*<<< orphan*/  dim; void* datatype; void* format; } ;
typedef  TYPE_3__ ccv_nnc_tensor_param_t ;
struct TYPE_16__ {int /*<<< orphan*/ * graph; void* d; } ;
struct TYPE_18__ {TYPE_6__* tensor; TYPE_2__ symbol; } ;
typedef  TYPE_4__ ccv_nnc_tensor_bind_t ;
typedef  int /*<<< orphan*/  ccv_nnc_symbolic_graph_t ;
struct TYPE_19__ {int const rnum; } ;
typedef  TYPE_5__ ccv_array_t ;
struct TYPE_15__ {int /*<<< orphan*/  u8; } ;
struct TYPE_20__ {TYPE_1__ data; } ;

/* Variables and functions */
 void* CCV_NNC_NO_TENSOR_SYMBOL ; 
 int /*<<< orphan*/  CCV_TENSOR_CPU_MEMORY ; 
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ CCV_TENSOR_GPU_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC2 (int const,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__* const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__* const) ; 
 scalar_t__ FUNC7 (TYPE_5__* const,int const) ; 
 TYPE_5__* FUNC8 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__* const,int /*<<< orphan*/ * const*) ; 
 int /*<<< orphan*/  FUNC10 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 size_t FUNC12 (TYPE_3__) ; 
 TYPE_6__* FUNC13 (int /*<<< orphan*/ ,TYPE_3__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,void*,void const* const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,void const* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 void* FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int) ; 
 void* FUNC20 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (char const* const,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ *) ; 

void FUNC25(const char* const fn, ccv_nnc_symbolic_graph_t** const graph_ref, ccv_nnc_tensor_bind_t** const tensor_binds_ref, int* const tensor_bind_size_ref)
{
	sqlite3* conn = 0;
	if (SQLITE_OK != FUNC22(fn, &conn))
		return;
	ccv_array_t* const repo = FUNC8(sizeof(ccv_nnc_symbolic_graph_t*), 1, 0);
	const char graph_select_qs[] =
		"SELECT graph, tensor_symbol_size, exec_symbol_size, sources, destinations, sub_graphs, pair, p, p_idx, "
		"exec_idx, breakpoint_size, breakpoints, backward_tensor_symbol_size, "
		"backward_tensor_symbol_idx, backward_exec_symbol_size, backward_exec_symbol_idx, "
		"parallel_count, parallel_tensor_symbol_size, parallel_tensor_symbol_idx, "
		"parallel_exec_symbol_size, parallel_exec_symbol_idx FROM graph ORDER BY graph";
	sqlite3_stmt* graph_select_stmt = 0;
	FUNC1(SQLITE_OK == FUNC23(conn, graph_select_qs, sizeof(graph_select_qs), &graph_select_stmt, 0));
	sqlite3_stmt* tensor_symbol_select_stmt = 0;
	const char tensor_symbol_select_qs[] =
		"SELECT id, assign_ref, r_assign_ref, bypass_ref, r_bypass_ref, p_ref, alias_ref, pair_ref, flags, ofs, inc, "
		"s_ref, name, type, format, datatype, dim FROM tensor_symbol WHERE graph=$graph ORDER BY id";
	FUNC1(SQLITE_OK == FUNC23(conn, tensor_symbol_select_qs, sizeof(tensor_symbol_select_qs), &tensor_symbol_select_stmt, 0));
	const char exec_symbol_select_qs[] =
		"SELECT id, input_size, output_size, graph_ref_size, flags, pair_ref, inputs, outputs, outgoings, "
		"name, cmd_cmd, cmd_backend, cmd_algorithm, cmd_info, hint, graph_ref, case_of_expr, case_of_flags, "
		"case_of_argument_offset, case_of_argument_size, p_while_expr, p_while_input_size, p_while_inputs "
		"FROM graph_exec_symbol WHERE graph=$graph ORDER BY id";
	sqlite3_stmt* exec_symbol_select_stmt = 0;
	FUNC1(SQLITE_OK == FUNC23(conn, exec_symbol_select_qs, sizeof(exec_symbol_select_qs), &exec_symbol_select_stmt, 0));
	while (SQLITE_ROW == FUNC24(graph_select_stmt))
	{
		ccv_nnc_symbolic_graph_t* const graph = FUNC11();
		const int graph_idx = FUNC20(graph_select_stmt, 0);
		FUNC4(graph_idx == repo->rnum);
		FUNC9(repo, &graph);
		FUNC2(graph_idx, graph_select_stmt, tensor_symbol_select_stmt, exec_symbol_select_stmt, graph);
	}
	int i;
	for (i = 0; i < repo->rnum; i++)
		FUNC3(repo, *(ccv_nnc_symbolic_graph_t**)FUNC7(repo, i));
	*graph_ref = (repo->rnum > 0) ? *(ccv_nnc_symbolic_graph_t**)FUNC7(repo, 0) : 0;
	FUNC4((tensor_bind_size_ref && tensor_binds_ref) || (!tensor_bind_size_ref && !tensor_binds_ref));
	if (tensor_bind_size_ref && tensor_binds_ref)
	{
		const char tensor_bind_count_qs[] =
			"SELECT COUNT(*) FROM tensor_bind";
		sqlite3_stmt* tensor_bind_count_stmt = 0;
		FUNC1(SQLITE_OK == FUNC23(conn, tensor_bind_count_qs, sizeof(tensor_bind_count_qs), &tensor_bind_count_stmt, 0));
		FUNC24(tensor_bind_count_stmt);
		const int tensor_bind_size = *tensor_bind_size_ref = FUNC20(tensor_bind_count_stmt, 0);
		FUNC21(tensor_bind_count_stmt);
		// Respect the insert order (rowid).
		if (!tensor_bind_size)
			*tensor_binds_ref = 0;
		else {
			const char tensor_bind_select_qs[] =
				"SELECT id, graph, type, format, datatype, dim, data FROM tensor_bind";
			sqlite3_stmt* tensor_bind_select_stmt = 0;
			ccv_nnc_tensor_bind_t* const tensor_binds = *tensor_binds_ref = (ccv_nnc_tensor_bind_t*)FUNC5(sizeof(ccv_nnc_tensor_bind_t) * tensor_bind_size);
			FUNC1(SQLITE_OK == FUNC23(conn, tensor_bind_select_qs, sizeof(tensor_bind_select_qs), &tensor_bind_select_stmt, 0));
			for (i = 0; SQLITE_ROW == FUNC24(tensor_bind_select_stmt); i++)
			{
				FUNC4(i < tensor_bind_size);
				tensor_binds[i].symbol.d = FUNC20(tensor_bind_select_stmt, 0);
				const int graph_idx = FUNC20(tensor_bind_select_stmt, 1);
				FUNC4(graph_idx < repo->rnum);
				tensor_binds[i].symbol.graph = (graph_idx >= 0) ? *(ccv_nnc_symbolic_graph_t**)FUNC7(repo, graph_idx) : 0;
				ccv_nnc_tensor_param_t info;
				info.type = FUNC20(tensor_bind_select_stmt, 2);
				info.format = FUNC20(tensor_bind_select_stmt, 3);
				info.datatype = FUNC20(tensor_bind_select_stmt, 4);
				const int* const dim = FUNC18(tensor_bind_select_stmt, 5);
				FUNC16(info.dim, 0, sizeof(info.dim));
				if (dim)
					FUNC15(info.dim, dim, FUNC10(sizeof(info.dim), FUNC19(tensor_bind_select_stmt, 5)));
				const void* const data = FUNC18(tensor_bind_select_stmt, 6);
				if (!data)
					tensor_binds[i].tensor = 0;
				else {
					tensor_binds[i].tensor = FUNC13(0, info, 0);
					size_t data_size = FUNC12(info);
#ifdef HAVE_CUDA
					if (CCV_TENSOR_GET_MEMORY(info.type) == CCV_TENSOR_GPU_MEMORY)
						cumemcpy(tensor_binds[i].tensor->data.u8, info.type, data, CCV_TENSOR_CPU_MEMORY, ccv_min(data_size, sqlite3_column_bytes(tensor_bind_select_stmt, 6)));
					else
						memcpy(tensor_binds[i].tensor->data.u8, data, ccv_min(data_size, sqlite3_column_bytes(tensor_bind_select_stmt, 6)));
#else
					FUNC15(tensor_binds[i].tensor->data.u8, data, FUNC10(data_size, FUNC19(tensor_bind_select_stmt, 6)));
#endif
				}
			}
			for (; i < tensor_bind_size; i++)
			{
				tensor_binds[i].symbol.d = CCV_NNC_NO_TENSOR_SYMBOL;
				tensor_binds[i].symbol.graph = 0;
				tensor_binds[i].tensor = 0;
			}
			FUNC21(tensor_bind_select_stmt);
		}
	}
	FUNC6(repo);
	FUNC21(graph_select_stmt);
	FUNC21(tensor_symbol_select_stmt);
	FUNC21(exec_symbol_select_stmt);
	FUNC17(conn);
}