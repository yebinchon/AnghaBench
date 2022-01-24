#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  size_str ;
struct TYPE_8__ {scalar_t__ Size; int /*<<< orphan*/  EntryName; int /*<<< orphan*/ * Data; } ;
typedef  TYPE_1__ WPC_ENTRY ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_9__ {scalar_t__ Size; scalar_t__ Current; scalar_t__ Buf; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_2__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__,int) ; 
 scalar_t__ FUNC5 (char*) ; 
 int WPC_DATA_ENTRY_SIZE ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 TYPE_1__* FUNC7 (int) ; 

LIST *FUNC8(BUF *b)
{
	char entry_name[WPC_DATA_ENTRY_SIZE];
	char size_str[11];
	LIST *o;
	// Validate arguments
	if (b == NULL)
	{
		return NULL;
	}

	FUNC4(b, 0, 0);

	o = FUNC2(NULL);

	while (true)
	{
		UINT size;
		WPC_ENTRY *e;

		if (FUNC3(b, entry_name, WPC_DATA_ENTRY_SIZE) != WPC_DATA_ENTRY_SIZE)
		{
			break;
		}

		FUNC6(size_str, sizeof(size_str));
		if (FUNC3(b, size_str, 10) != 10)
		{
			break;
		}

		size = FUNC5(size_str);
		if ((b->Size - b->Current) < size)
		{
			break;
		}

		e = FUNC7(sizeof(WPC_ENTRY));
		e->Data = (UCHAR *)b->Buf + b->Current;
		FUNC1(e->EntryName, entry_name, WPC_DATA_ENTRY_SIZE);
		e->Size = size;

		FUNC4(b, size, 1);

		FUNC0(o, e);
	}

	return o;
}