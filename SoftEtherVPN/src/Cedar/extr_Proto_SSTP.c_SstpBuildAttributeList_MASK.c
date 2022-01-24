#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  USHORT ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  SSTP_ATTRIBUTE ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

BUF *FUNC8(LIST *o, USHORT message_type)
{
	UINT i;
	BUF *b;
	USHORT us;
	// Validate arguments
	if (o == NULL)
	{
		return NULL;
	}

	b = FUNC4();

	us = FUNC0(message_type);
	FUNC6(b, &us, sizeof(USHORT));

	us = FUNC0((USHORT)FUNC3(o));
	FUNC6(b, &us, sizeof(USHORT));

	for (i = 0;i < FUNC3(o);i++)
	{
		SSTP_ATTRIBUTE *a = FUNC2(o, i);
		BUF *ab = FUNC5(a);

		if (ab != NULL)
		{
			FUNC7(b, ab);

			FUNC1(ab);
		}
	}

	return b;
}