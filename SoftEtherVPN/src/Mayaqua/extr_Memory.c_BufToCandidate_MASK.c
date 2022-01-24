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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  UINT64 ;
typedef  scalar_t__ UINT ;
struct TYPE_3__ {int /*<<< orphan*/ * Str; int /*<<< orphan*/  LastSelectedTime; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_1__ CANDIDATE ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (int) ; 

LIST *FUNC8(BUF *b)
{
	LIST *o;
	UINT i;
	UINT num;
	// Validate arguments
	if (b == NULL)
	{
		return NULL;
	}

	num = FUNC4(b);
	o = FUNC2();

	for (i = 0;i < num;i++)
	{
		CANDIDATE *c;
		wchar_t *s;
		UINT64 sec64;
		UINT len, size;
		sec64 = FUNC5(b);
		len = FUNC4(b);
		if (len >= 65536)
		{
			break;
		}
		size = (len + 1) * 2;
		s = FUNC7(size);
		if (FUNC3(b, s, size) != size)
		{
			FUNC1(s);
			break;
		}
		else
		{
			c = FUNC7(sizeof(CANDIDATE));
			c->LastSelectedTime = sec64;
			c->Str = s;
			FUNC0(o, c);
		}
	}

	FUNC6(o);
	return o;
}