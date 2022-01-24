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
typedef  scalar_t__ UCHAR ;
struct TYPE_3__ {scalar_t__ Size; scalar_t__* Data; scalar_t__ Id; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_1__ DHCP_OPTION ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 scalar_t__ DHCP_ID_PRIVATE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__*,int) ; 

BUF *FUNC4(LIST *o)
{
	BUF *b;
	UINT i;
	UCHAR id;
	UCHAR sz;
	// Validate arguments
	if (o == NULL)
	{
		return NULL;
	}

	b = FUNC2();
	for (i = 0;i < FUNC1(o);i++)
	{
		DHCP_OPTION *d = FUNC0(o, i);
		UINT current_size = d->Size;
		UINT current_pos = 0;

		id = (UCHAR)d->Id;
		if (d->Size <= 255)
		{
			sz = (UCHAR)d->Size;
		}
		else
		{
			sz = 0xFF;
		}
		FUNC3(b, &id, 1);
		FUNC3(b, &sz, 1);
		FUNC3(b, d->Data, sz);

		current_size -= sz;
		current_pos += sz;

		while (current_size != 0)
		{
			id = DHCP_ID_PRIVATE;
			if (current_size <= 255)
			{
				sz = (UCHAR)current_size;
			}
			else
			{
				sz = 0xFF;
			}
			FUNC3(b, &id, 1);
			FUNC3(b, &sz, 1);
			FUNC3(b, ((UCHAR *)d->Data) + current_pos, sz);

			current_size -= sz;
			current_pos += sz;
		}

	}

	id = 0xff;
	FUNC3(b, &id, 1);

	return b;
}