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
struct TYPE_4__ {int /*<<< orphan*/  UserHashList; } ;
typedef  TYPE_1__ USERLIST ;
typedef  scalar_t__ UINT64 ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

bool FUNC5(LIST *o, char *filename, UINT64 user_hash)
{
	USERLIST *u;
	bool ret = false;
	// Validate arguments
	if (o == NULL || filename == NULL || user_hash == 0)
	{
		return false;
	}

	FUNC3(o);
	{
		u = FUNC0(o, filename);
		if (u == NULL)
		{
			u = FUNC2(o, filename);
		}

		if (u != NULL)
		{
			ret = FUNC1(u->UserHashList, user_hash);
		}
	}
	FUNC4(o);

	return ret;
}