#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  void* USHORT ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_8__ {int TotalLength; } ;
struct TYPE_7__ {void* MessageType; } ;
typedef  TYPE_1__ SSTP_PACKET ;
typedef  TYPE_2__ SSTP_ATTRIBUTE ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,int) ; 

LIST *FUNC7(UCHAR *data, UINT size, SSTP_PACKET *p)
{
	LIST *o;
	USHORT us;
	UINT num;
	// Validate arguments
	if (size == 0 || data == NULL || p == NULL)
	{
		return NULL;
	}

	if (size < 4)
	{
		return NULL;
	}

	// Message Type
	us = FUNC3(data);
	p->MessageType = us;
	data += sizeof(USHORT);
	size -= sizeof(USHORT);

	// Num Attributes
	num = FUNC3(data);
	data += sizeof(USHORT);
	size -= sizeof(USHORT);

	// Attributes List
	o = FUNC2(NULL);

	while (FUNC1(o) < num)
	{
		SSTP_ATTRIBUTE *a = FUNC6(data, size);

		if (a == NULL)
		{
			FUNC5(o);
			return NULL;
		}

		if (a->TotalLength > size)
		{
			FUNC4(a);
			FUNC5(o);
			return NULL;
		}

		FUNC0(o, a);

		data += a->TotalLength;
		size -= a->TotalLength;
	}

	return o;
}