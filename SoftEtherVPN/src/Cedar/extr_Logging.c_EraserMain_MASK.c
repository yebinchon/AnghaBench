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
typedef  int /*<<< orphan*/  bs ;
typedef  scalar_t__ UINT ;
struct TYPE_9__ {int LastFailed; int /*<<< orphan*/  MinFreeSpace; } ;
struct TYPE_8__ {int /*<<< orphan*/  FullPath; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_1__ ERASE_FILE ;
typedef  TYPE_2__ ERASER ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/ ) ; 

void FUNC8(ERASER *e)
{
	LIST *o;
	UINT i;
	bool ok = false;
	char bs[64];
	// Validate arguments
	if (e == NULL)
	{
		return;
	}

	// Check the free space first
	if (FUNC0(e))
	{
		// Vacant enough
		return;
	}

	FUNC7(bs, sizeof(bs), e->MinFreeSpace);

	// Generate the file list
	o = FUNC4(e);

	// Try to delete one by one in order from oldest file
	for (i = 0;i < FUNC6(o);i++)
	{
		ERASE_FILE *f = FUNC5(o, i);

		// Delete the file
		if (FUNC2(f->FullPath))
		{
			FUNC1(e, "LE_DELETE", bs, f->FullPath);
		}

		// Check the free space after the deleted
		if (FUNC0(e))
		{
			// Free space has been restored
			ok = true;
			break;
		}
	}

	// Release the file list
	FUNC3(o);

	if (e->LastFailed == false && ok == false)
	{
		// Free space is not enough, but can not delete the file any more
		FUNC1(e, "LE_NOT_ENOUGH_FREE", bs);
	}

	e->LastFailed = ok ? false : true;
}