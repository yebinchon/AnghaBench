#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int column_size; int const rnum; TYPE_1__* derived_column_data; } ;
typedef  TYPE_2__ ccv_cnnp_dataframe_t ;
struct TYPE_12__ {int prefetch_head; int prefetch_tail; TYPE_2__* prefetches; TYPE_2__* dataframe; } ;
typedef  TYPE_3__ ccv_cnnp_dataframe_iter_t ;
struct TYPE_13__ {int /*<<< orphan*/  ctx; int /*<<< orphan*/  data; scalar_t__ flag; } ;
typedef  TYPE_4__ ccv_cnnp_dataframe_data_item_t ;
struct TYPE_10__ {int rnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__* const,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__* const) ; 
 TYPE_4__* FUNC2 (TYPE_2__*,int) ; 

__attribute__((used)) static void FUNC3(ccv_cnnp_dataframe_iter_t* const iter)
{
	ccv_cnnp_dataframe_t* const dataframe = iter->dataframe;
	FUNC1(dataframe);
	int i, j;
	const int column_size = dataframe->column_size + (dataframe->derived_column_data ? dataframe->derived_column_data->rnum : 0);
	if (iter->prefetch_head <= iter->prefetch_tail)
	{
		FUNC1(iter->prefetches);
		const int lines = iter->prefetches->rnum / column_size;
		for (i = iter->prefetch_head; i <= iter->prefetch_tail; i++)
		{
			ccv_cnnp_dataframe_data_item_t* const cached_data = FUNC2(iter->prefetches, i);
			for (j = 0; j < column_size; j++)
				if (cached_data[j * lines].flag)
					FUNC0(dataframe, cached_data[j * lines].data, j, cached_data[j * lines].ctx);
		}
	} else if (iter->prefetch_tail >= 0) { // -1 means no item.
		FUNC1(iter->prefetches);
		const int lines = iter->prefetches->rnum / column_size;
		for (i = iter->prefetch_head; i < lines; i++)
		{
			ccv_cnnp_dataframe_data_item_t* const cached_data = FUNC2(iter->prefetches, i);
			for (j = 0; j < column_size; j++)
				if (cached_data[j * lines].flag)
					FUNC0(dataframe, cached_data[j * lines].data, j, cached_data[j * lines].ctx);
		}
		for (i = 0; i <= iter->prefetch_tail; i++)
		{
			ccv_cnnp_dataframe_data_item_t* const cached_data = FUNC2(iter->prefetches, i);
			for (j = 0; j < column_size; j++)
				if (cached_data[j * lines].flag)
					FUNC0(dataframe, cached_data[j * lines].data, j, cached_data[j * lines].ctx);
		}
	}
	iter->prefetch_head = 0;
	iter->prefetch_tail = -1;
}