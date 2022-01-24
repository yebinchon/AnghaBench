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
typedef  scalar_t__ UINT ;
struct TYPE_3__ {int /*<<< orphan*/  Size; scalar_t__ Current; } ;
typedef  TYPE_1__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KS_SEEK_BUF_COUNT ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(BUF *b, UINT offset, int mode)
{
	UINT new_pos;
	// Validate arguments
	if (b == NULL)
	{
		return;
	}

	if (mode == 0)
	{
		// Absolute position
		new_pos = offset;
	}
	else
	{
		if (mode > 0)
		{
			// Move Right
			new_pos = b->Current + offset;
		}
		else
		{
			// Move Left
			if (b->Current >= offset)
			{
				new_pos = b->Current - offset;
			}
			else
			{
				new_pos = 0;
			}
		}
	}
	b->Current = FUNC1(new_pos, 0, b->Size);

	FUNC0(KS_SEEK_BUF_COUNT);
}