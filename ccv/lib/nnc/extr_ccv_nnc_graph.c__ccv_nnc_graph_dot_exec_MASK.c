#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ ccv_nnc_stream_context_t ;
struct TYPE_11__ {scalar_t__ stream_size; int wait_size; int* waits; } ;
struct TYPE_8__ {int /*<<< orphan*/  cmd; } ;
struct TYPE_10__ {TYPE_6__ schedule; TYPE_1__ cmd; } ;
typedef  TYPE_3__ ccv_nnc_graph_exec_info_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int const CCV_NNC_LONG_DOT_GRAPH ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int* FUNC1 (TYPE_6__) ; 
 int* FUNC2 (TYPE_6__) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int const,...) ; 
 int /*<<< orphan*/  FUNC5 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(const int index, const ccv_nnc_graph_exec_info_t* const exec_info, ccv_nnc_stream_context_t** const streams, const int flags, FILE* out)
{
	if (flags == CCV_NNC_LONG_DOT_GRAPH)
		FUNC5('{', out);
	FUNC4(out, "node%d", index);
	if (flags == CCV_NNC_LONG_DOT_GRAPH)
	{
		FUNC6("|Command: ", out);
		FUNC6(FUNC3(exec_info->cmd.cmd), out);
		if (exec_info->schedule.stream_size > 0)
		{
			int i, flag = 0;
			FUNC6("|Stream: ", out);
			for (i = 0; i < exec_info->schedule.stream_size; i++)
			{
				const int device_id = streams ? FUNC0(streams[FUNC2(exec_info->schedule)[i]]->type) : 0;
				if (i == 0)
					FUNC4(out, "%d (d%d)", FUNC2(exec_info->schedule)[i], device_id);
				else
					FUNC4(out, ", %d (d%d)", FUNC2(exec_info->schedule)[i], device_id);
			}
			for (i = 0; i < exec_info->schedule.stream_size; i++)
				if (FUNC1(exec_info->schedule)[i] >= 0)
				{
					if (!flag)
					{
						flag = 1;
						FUNC4(out, "|Signal: %d", FUNC1(exec_info->schedule)[i]);
					} else
						FUNC4(out, ", %d", FUNC1(exec_info->schedule)[i]);
				}
		}
		if (exec_info->schedule.wait_size > 0)
		{
			FUNC6("|Wait: ", out);
			int i;
			for (i = 0; i < exec_info->schedule.wait_size - 1; i++)
				FUNC4(out, "%d, ", exec_info->schedule.waits[i]);
			FUNC4(out, "%d", exec_info->schedule.waits[exec_info->schedule.wait_size - 1]);
		}
		FUNC5('}', out);
	}
}