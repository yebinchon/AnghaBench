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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_4__ {int Size; int /*<<< orphan*/  Buf; } ;
typedef  TYPE_1__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (char*) ; 

bool FUNC3(char *dst, UINT size, char *src)
{
	BUF *b;
	bool ret = false;
	// Validate arguments
	if (dst == NULL || src == NULL)
	{
		return false;
	}

	b = FUNC2(src);

	if (b != NULL && b->Size == 6)
	{
		ret = true;

		FUNC0(dst, size, b->Buf, b->Size);
	}

	FUNC1(b);

	return ret;
}