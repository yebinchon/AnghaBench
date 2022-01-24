#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int const stream_type; int const column_idx_size; int* column_idxs; void* const context; int /*<<< orphan*/  context_deinit; int /*<<< orphan*/  data_deinit; int /*<<< orphan*/  map; } ;
typedef  TYPE_1__ ccv_cnnp_derived_column_data_t ;
struct TYPE_8__ {int column_size; TYPE_4__* derived_column_data; } ;
typedef  TYPE_2__ ccv_cnnp_dataframe_t ;
typedef  int /*<<< orphan*/  ccv_cnnp_column_data_map_f ;
typedef  int /*<<< orphan*/  ccv_cnnp_column_data_deinit_f ;
typedef  int /*<<< orphan*/  ccv_cnnp_column_data_context_deinit_f ;
struct TYPE_9__ {int rnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_4__* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int const* const,int) ; 

int FUNC5(ccv_cnnp_dataframe_t* const dataframe, ccv_cnnp_column_data_map_f map, const int stream_type, ccv_cnnp_column_data_deinit_f data_deinit, const int* const column_idxs, const int column_idx_size, void* const context, ccv_cnnp_column_data_context_deinit_f context_deinit)
{
	FUNC0(column_idx_size > 0);
	if (!dataframe->derived_column_data)
		dataframe->derived_column_data = FUNC2(sizeof(ccv_cnnp_derived_column_data_t), 1, 0);
	const int column_size = dataframe->column_size + dataframe->derived_column_data->rnum;
	int i;
	for (i = 0; i < column_idx_size; i++)
		{ FUNC0(column_idxs[i] < column_size); }
	ccv_cnnp_derived_column_data_t column_data = {
		.stream_type = stream_type,
		.column_idx_size = column_idx_size,
		.column_idxs = (int*)FUNC1(sizeof(int) * column_idx_size),
		.map = map,
		.data_deinit = data_deinit,
		.context = context,
		.context_deinit = context_deinit,
	};
	FUNC4(column_data.column_idxs, column_idxs, sizeof(int) * column_idx_size);
	FUNC3(dataframe->derived_column_data, &column_data);
	return dataframe->column_size + dataframe->derived_column_data->rnum - 1;
}