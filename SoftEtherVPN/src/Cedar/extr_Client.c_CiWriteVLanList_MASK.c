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
struct TYPE_7__ {int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ UNIX_VLAN ;
typedef  scalar_t__ UINT ;
struct TYPE_8__ {int /*<<< orphan*/  UnixVLanList; } ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  TYPE_2__ CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(CLIENT *c, FOLDER *f)
{
	// Validate arguments
	if (c == NULL || f == NULL)
	{
		return;
	}

	FUNC4(c->UnixVLanList);
	{
		UINT i;
		for (i = 0;i < FUNC3(c->UnixVLanList);i++)
		{
			UNIX_VLAN *v = FUNC2(c->UnixVLanList, i);
			FUNC1(c, FUNC0(f, v->Name), v);
		}
	}
	FUNC5(c->UnixVLanList);
}