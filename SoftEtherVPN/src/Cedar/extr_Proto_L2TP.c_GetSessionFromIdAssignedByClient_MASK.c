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
typedef  scalar_t__ UINT ;
struct TYPE_7__ {scalar_t__ SessionId1; } ;
struct TYPE_6__ {int /*<<< orphan*/  SessionList; } ;
typedef  TYPE_1__ L2TP_TUNNEL ;
typedef  TYPE_2__ L2TP_SESSION ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

L2TP_SESSION *FUNC2(L2TP_TUNNEL *t, UINT session_id)
{
	UINT i;
	// Validate arguments
	if (t == NULL || session_id == 0)
	{
		return NULL;
	}

	for (i = 0;i < FUNC1(t->SessionList);i++)
	{
		L2TP_SESSION *s = FUNC0(t->SessionList, i);

		if (s->SessionId1 == session_id)
		{
			return s;
		}
	}

	return NULL;
}