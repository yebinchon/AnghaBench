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
typedef  int /*<<< orphan*/  name ;
typedef  scalar_t__ UINT ;
struct TYPE_3__ {int /*<<< orphan*/  SubnetMask; scalar_t__ Masked; int /*<<< orphan*/  IpAddress; int /*<<< orphan*/  Priority; int /*<<< orphan*/  Deny; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  TYPE_1__ AC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,scalar_t__) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(FOLDER *f, LIST *o)
{
	// Validate arguments
	if (f == NULL || o == NULL)
	{
		return;
	}

	FUNC7(o);
	{
		UINT i;
		for (i = 0;i < FUNC6(o);i++)
		{
			char name[MAX_SIZE];
			AC *ac = FUNC5(o, i);
			FOLDER *ff;

			FUNC4(name, sizeof(name), "Acl%u", i + 1);

			ff = FUNC3(f, name);

			FUNC0(ff, "Deny", ac->Deny);
			FUNC1(ff, "Priority", ac->Priority);
			FUNC2(ff, "IpAddress", &ac->IpAddress);

			if (ac->Masked)
			{
				FUNC2(ff, "NetMask", &ac->SubnetMask);
			}
		}
	}
	FUNC8(o);
}