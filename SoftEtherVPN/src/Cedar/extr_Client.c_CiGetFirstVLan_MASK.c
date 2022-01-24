#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  t ;
typedef  size_t UINT ;
struct TYPE_7__ {int NumItem; TYPE_1__** Items; } ;
struct TYPE_6__ {char* DeviceName; scalar_t__ Enabled; } ;
typedef  TYPE_2__ RPC_CLIENT_ENUM_VLAN ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 char* FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 

char *FUNC4(CLIENT *c)
{
	char *ret = NULL;
	RPC_CLIENT_ENUM_VLAN t;
	// Validate arguments
	if (c == NULL)
	{
		return NULL;
	}

	FUNC3(&t, sizeof(t));
	if (FUNC2(c, &t) == false)
	{
		return NULL;
	}

	if (t.NumItem >= 1)
	{
		UINT i;
		char *tmp = t.Items[0]->DeviceName;

		for (i = 0;i < t.NumItem;i++)
		{
			if (t.Items[i]->Enabled)
			{
				tmp = t.Items[i]->DeviceName;
			}
		}

		ret = FUNC1(tmp);
	}

	FUNC0(&t);

	return ret;
}