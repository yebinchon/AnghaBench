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
typedef  int UINT ;
struct TYPE_3__ {int Size; void* Data; int /*<<< orphan*/  Ref; } ;
typedef  TYPE_1__ SHARED_BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (int) ; 

SHARED_BUFFER *FUNC3(void *data, UINT size)
{
	SHARED_BUFFER *b = FUNC2(sizeof(SHARED_BUFFER));

	b->Ref = FUNC1();
	b->Data = FUNC2(size);
	b->Size = size;

	if (data != NULL)
	{
		FUNC0(b->Data, data, size);
	}

	return b;
}