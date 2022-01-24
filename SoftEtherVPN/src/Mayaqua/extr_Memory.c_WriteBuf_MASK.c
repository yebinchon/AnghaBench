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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_4__ {scalar_t__ Current; scalar_t__ Size; int /*<<< orphan*/ * Buf; } ;
typedef  TYPE_1__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KS_WRITE_BUF_COUNT ; 

void FUNC3(BUF *b, void *buf, UINT size)
{
	UINT new_size;
	// Validate arguments
	if (b == NULL || buf == NULL || size == 0)
	{
		return;
	}

	new_size = b->Current + size;
	if (new_size > b->Size)
	{
		// Adjust the size
		FUNC0(b, new_size);
	}
	if (b->Buf != NULL)
	{
		FUNC1((UCHAR *)b->Buf + b->Current, buf, size);
	}
	b->Current += size;
	b->Size = new_size;

	// KS
	FUNC2(KS_WRITE_BUF_COUNT);
}