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
struct TYPE_3__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Data; } ;
typedef  TYPE_1__ WPC_ENTRY ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void*,scalar_t__) ; 

BUF *FUNC6(WPC_ENTRY *e)
{
	void *data;
	UINT data_size;
	UINT size;
	BUF *b;
	// Validate arguments
	if (e == NULL)
	{
		return NULL;
	}

	data_size = e->Size + 4096;
	data = FUNC2(data_size);
	size = FUNC0(data, e->Data, e->Size);

	b = FUNC3();
	FUNC5(b, data, size);
	FUNC4(b, 0, 0);

	FUNC1(data);

	return b;
}