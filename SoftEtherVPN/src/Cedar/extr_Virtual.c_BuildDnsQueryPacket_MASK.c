#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  USHORT ;
struct TYPE_6__ {int Size; int /*<<< orphan*/ * Buf; } ;
typedef  TYPE_1__ BUF ;

/* Variables and functions */
 TYPE_1__* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 

void FUNC4(BUF *b, char *hostname, bool ptr)
{
	USHORT val;
	BUF *c;
	// Validate arguments
	if (b == NULL || hostname == NULL)
	{
		return;
	}

	// Convert the host name to a buffer
	c = FUNC0(hostname);
	if (c == NULL)
	{
		return;
	}

	FUNC3(b, c->Buf, c->Size);
	FUNC2(c);

	// Type and class
	if (ptr == false)
	{
		val = FUNC1(0x0001);
	}
	else
	{
		val = FUNC1(0x000c);
	}
	FUNC3(b, &val, 2);

	val = FUNC1(0x0001);
	FUNC3(b, &val, 2);
}