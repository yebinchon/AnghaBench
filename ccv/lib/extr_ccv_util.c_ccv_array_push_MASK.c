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
struct TYPE_4__ {int rnum; int size; scalar_t__ rsize; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ ccv_array_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void const*,scalar_t__) ; 

void FUNC4(ccv_array_t* array, const void* r)
{
	array->rnum++;
	if (array->rnum > array->size)
	{
		array->size = FUNC2(array->size * 3 / 2, array->size + 1);
		array->data = FUNC0(array->data, (size_t)array->size * (size_t)array->rsize);
	}
	FUNC3(FUNC1(array, array->rnum - 1), r, array->rsize);
}