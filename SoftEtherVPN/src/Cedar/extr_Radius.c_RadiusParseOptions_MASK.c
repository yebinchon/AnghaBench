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
typedef  int USHORT ;
typedef  int UCHAR ;
struct TYPE_4__ {int Id; int Size; int /*<<< orphan*/  Data; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_1__ DHCP_OPTION ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int*,int) ; 
 TYPE_1__* FUNC5 (int) ; 

LIST *FUNC6(BUF *b)
{
	LIST *o;
	UCHAR code;
	UCHAR id;
	USHORT len;
	UCHAR auth[16];
	// Validate arguments
	if (b == NULL)
	{
		return NULL;
	}

	o = FUNC3(NULL);

	FUNC4(b, &code, 1);
	FUNC4(b, &id, 1);
	len = 0;
	FUNC4(b, &len, 2);
	len = FUNC2(len);
	FUNC4(b, auth, 16);

	while (true)
	{
		UCHAR attribute_id;
		UCHAR size;
		UCHAR data[256];
		DHCP_OPTION *d;

		if (FUNC4(b, &attribute_id, 1) != 1)
		{
			break;
		}

		if (FUNC4(b, &size, 1) != 1)
		{
			break;
		}

		if (size <= 2)
		{
			break;
		}

		size -= 2;
		if (FUNC4(b, data, size) != size)
		{
			break;
		}

		d = FUNC5(sizeof(DHCP_OPTION));
		d->Id = attribute_id;
		d->Size = size;
		d->Data = FUNC1(data, d->Size);

		FUNC0(o, d);
	}

	return o;
}