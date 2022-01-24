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
struct TYPE_3__ {int Size; void* Str; } ;
typedef  TYPE_1__ VALUE ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int,char*) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

VALUE *FUNC4(char *str)
{
	VALUE *v;
	// Validate arguments
	if (str == NULL)
	{
		return NULL;
	}

	// Memory allocation
	v = FUNC0(sizeof(VALUE));

	// String copy
	v->Size = FUNC2(str) + 1;
	v->Str = FUNC0(v->Size);
	FUNC1(v->Str, v->Size, str);

	FUNC3(v->Str);

	return v;
}