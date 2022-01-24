#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ccv_nnc_tape_exec_data_array_t ;
struct TYPE_5__ {int rnum; } ;
typedef  TYPE_1__ ccv_array_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__* const,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__* const,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(ccv_array_t* const exec_data, int* const pos_ref, ccv_nnc_tape_exec_data_array_t** const tape_exec_data_ref)
{
	int pos = exec_data->rnum;
	FUNC1(exec_data, pos + 1);
	*pos_ref = (pos << 1) | 1;
	ccv_nnc_tape_exec_data_array_t* const tape_exec_data = (ccv_nnc_tape_exec_data_array_t*)FUNC0(exec_data, pos);
	FUNC2(tape_exec_data, 0, sizeof(ccv_nnc_tape_exec_data_array_t));
	*tape_exec_data_ref = tape_exec_data;
}