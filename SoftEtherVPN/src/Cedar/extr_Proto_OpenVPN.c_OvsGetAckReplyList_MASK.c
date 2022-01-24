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
typedef  scalar_t__ UINT ;
struct TYPE_3__ {int /*<<< orphan*/ * AckReplyList; } ;
typedef  TYPE_1__ OPENVPN_CHANNEL ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 scalar_t__* FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OPENVPN_MAX_NUMACK ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

UINT FUNC8(OPENVPN_CHANNEL *c, UINT *ret)
{
	UINT i;
	LIST *o = NULL;
	UINT num;
	// Validate arguments
	if (c == NULL || ret == NULL)
	{
		return 0;
	}

	num = FUNC5(FUNC4(c->AckReplyList), OPENVPN_MAX_NUMACK);

	for (i = 0;i < num;i++)
	{
		UINT *v = FUNC3(c->AckReplyList, i);

		if (o == NULL)
		{
			o = FUNC6(NULL);
		}

		FUNC0(o, v);

		ret[i] = *v;
	}

	for (i = 0;i < FUNC4(o);i++)
	{
		UINT *v = FUNC3(o, i);

		FUNC1(c->AckReplyList, v);

		FUNC2(v);
	}

	FUNC7(o);

	return num;
}