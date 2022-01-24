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
struct TYPE_3__ {int Size; void* Data; } ;
typedef  TYPE_1__ VALUE ;
typedef  int UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void*,int) ; 
 void* FUNC1 (int) ; 

VALUE *FUNC2(void *data, UINT size)
{
	VALUE *v;
	// Validate arguments
	if (data == NULL)
	{
		return NULL;
	}

	// Memory allocation
	v = FUNC1(sizeof(VALUE));

	// Data copy
	v->Size = size;
	v->Data = FUNC1(v->Size);
	FUNC0(v->Data, data, size);

	return v;
}