#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_3__ {int type; int refcount; int rsize; scalar_t__ size; scalar_t__ data; scalar_t__ rnum; scalar_t__ sig; } ;
typedef  TYPE_1__ ccv_array_t ;

/* Variables and functions */
 int CCV_GARBAGE ; 
 int CCV_REUSABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (size_t) ; 
 int /*<<< orphan*/  ccv_cache ; 
 scalar_t__ ccv_cache_opt ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__,int*) ; 
 scalar_t__ FUNC3 (int,int) ; 

ccv_array_t* FUNC4(int rsize, int rnum, uint64_t sig)
{
	ccv_array_t* array;
	if (ccv_cache_opt && sig != 0)
	{
		uint8_t type;
		array = (ccv_array_t*)FUNC2(&ccv_cache, sig, &type);
		if (array)
		{
			FUNC0(type == 1);
			array->type |= CCV_GARBAGE;
			array->refcount = 1;
			return array;
		}
	}
	array = (ccv_array_t*)FUNC1(sizeof(ccv_array_t));
	array->sig = sig;
	array->type = CCV_REUSABLE & ~CCV_GARBAGE;
	array->rnum = 0;
	array->rsize = rsize;
	array->size = FUNC3(rnum, 2 /* allocate memory for at least 2 items */);
	array->data = FUNC1((size_t)array->size * (size_t)rsize);
	return array;
}