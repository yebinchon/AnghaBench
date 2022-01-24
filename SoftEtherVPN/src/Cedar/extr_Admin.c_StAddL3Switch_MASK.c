#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_15__ {TYPE_1__* Server; } ;
struct TYPE_14__ {int /*<<< orphan*/  L3SwList; } ;
struct TYPE_13__ {int /*<<< orphan*/  Name; } ;
struct TYPE_12__ {TYPE_3__* Cedar; } ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ RPC_L3SW ;
typedef  int /*<<< orphan*/  L3SW ;
typedef  TYPE_3__ CEDAR ;
typedef  TYPE_4__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  ERR_LAYER3_SW_EXISTS ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 scalar_t__ FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NO_SUPPORT_FOR_BRIDGE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SERVER_ADMIN_ONLY ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

UINT FUNC11(ADMIN *a, RPC_L3SW *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	UINT ret = ERR_NO_ERROR;
	L3SW *sw;

	NO_SUPPORT_FOR_BRIDGE;

	if (FUNC3(t->Name))
	{
		return ERR_INVALID_PARAMETER;
	}

	if (FUNC4(t->Name) == false)
	{
		return ERR_INVALID_PARAMETER;
	}

	SERVER_ADMIN_ONLY;

	// Duplication check
	sw = FUNC6(c, t->Name);
	if (sw != NULL)
	{
		// Already exists
		FUNC9(sw);
		ret = ERR_LAYER3_SW_EXISTS;
	}
	else
	{
		FUNC8(c->L3SwList);
		{
			if (FUNC7(c->L3SwList) >= FUNC1(s, "i_max_l3_sw"))
			{
				// No more virtual interfaces
				sw = NULL;
			}
			else
			{
				// Create
				sw = FUNC5(c, t->Name);

				if (sw != NULL)
				{
					FUNC0(a, NULL, "LA_ADD_L3_SW", t->Name);

					FUNC2(s);
				}
			}
		}
		FUNC10(c->L3SwList);

		if (sw == NULL)
		{
			// Failed
			ret = ERR_INTERNAL_ERROR;
		}
		else
		{
			// Success
			FUNC9(sw);
		}
	}

	return ret;
}