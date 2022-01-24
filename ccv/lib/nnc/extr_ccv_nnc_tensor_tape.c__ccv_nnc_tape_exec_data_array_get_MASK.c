#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ccv_nnc_tape_exec_data_array_t ;
struct TYPE_4__ {int const rnum; } ;
typedef  TYPE_1__ ccv_array_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__ const* const,int const) ; 

__attribute__((used)) static ccv_nnc_tape_exec_data_array_t* FUNC2(const ccv_array_t* const exec_data, const int pos)
{
	FUNC0((pos >> 1) <= exec_data->rnum);
	return (ccv_nnc_tape_exec_data_array_t*)FUNC1(exec_data, pos >> 1);
}