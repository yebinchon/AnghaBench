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
typedef  int USHORT ;
typedef  int UINT ;
typedef  int UCHAR ;
struct TYPE_6__ {int Version; int IsControl; int DataSize; int /*<<< orphan*/ * AttributeList; int /*<<< orphan*/  Data; } ;
typedef  TYPE_1__ SSTP_PACKET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int FUNC1 (int*) ; 
 scalar_t__ SSTP_VERSION_1 ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int) ; 

SSTP_PACKET *FUNC5(UCHAR *data, UINT size)
{
	SSTP_PACKET *p;
	USHORT len;
	// Validate arguments
	if (data == NULL || size == 0)
	{
		return NULL;
	}

	if (size < 4)
	{
		return NULL;
	}

	p = FUNC4(sizeof(SSTP_PACKET));

	// Version
	p->Version = *((UCHAR *)data);
	data++;
	size--;

	if (p->Version != SSTP_VERSION_1)
	{
		// Invalid version
		FUNC2(p);
		return NULL;
	}

	// Flag
	if ((*((UCHAR *)data)) & 0x01)
	{
		p->IsControl = true;
	}
	data++;
	size--;

	// Length
	len = FUNC1(data) & 0xFFF;
	data += sizeof(USHORT);
	size -= sizeof(USHORT);

	if (len < 4)
	{
		// Invalid size
		FUNC2(p);
		return NULL;
	}

	if (((UINT)(len - 4)) > size)
	{
		// Oversized
		FUNC2(p);
		return NULL;
	}

	// Data
	p->DataSize = len - 4;
	p->Data = FUNC0(data, p->DataSize);

	if (p->IsControl)
	{
		// Parse the Attribute list
		p->AttributeList = FUNC3(p->Data, p->DataSize, p);

		if (p->AttributeList == NULL)
		{
			// Failure of parsing list
			FUNC2(p);
			return NULL;
		}
	}

	return p;
}