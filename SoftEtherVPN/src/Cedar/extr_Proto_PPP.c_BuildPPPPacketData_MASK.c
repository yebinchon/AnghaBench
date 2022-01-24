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
typedef  int USHORT ;
typedef  int UCHAR ;
struct TYPE_3__ {int* Data; int DataSize; int /*<<< orphan*/  Lcp; scalar_t__ IsControl; int /*<<< orphan*/  Protocol; } ;
typedef  TYPE_1__ PPP_PACKET ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

BUF *FUNC7(PPP_PACKET *pp)
{
	BUF *ret;
	UCHAR c;
	USHORT us;
	// Validate arguments
	if (pp == NULL)
	{
		return NULL;
	}

	ret = FUNC3();

	// Address
	c = 0xff;
	FUNC5(ret, &c, 1);

	// Control
	c = 0x03;
	FUNC5(ret, &c, 1);

	// Protocol
	us = FUNC1(pp->Protocol);
	FUNC5(ret, &us, 2);

	if (pp->IsControl)
	{
		// LCP
		BUF *b = FUNC0(pp->Lcp);

		FUNC6(ret, b);

		FUNC2(b);
	}
	else
	{
		// Data
		FUNC5(ret, pp->Data, pp->DataSize);
	}

	FUNC4(ret, 0, 0);

	return ret;
}