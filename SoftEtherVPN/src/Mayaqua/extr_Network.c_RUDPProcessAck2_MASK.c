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
typedef  scalar_t__ UINT64 ;
typedef  scalar_t__ UINT ;
struct TYPE_9__ {scalar_t__ SeqNo; } ;
struct TYPE_8__ {int /*<<< orphan*/ * SendSegmentList; } ;
typedef  int /*<<< orphan*/  RUDP_STACK ;
typedef  TYPE_1__ RUDP_SESSION ;
typedef  TYPE_2__ RUDP_SEGMENT ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(RUDP_STACK *r, RUDP_SESSION *se, UINT64 max_seq)
{
	LIST *o;
	UINT i;
	// Validate arguments
	if (r == NULL || se == NULL || max_seq == 0)
	{
		return;
	}

	o = NULL;

	for (i = 0;i < FUNC4(se->SendSegmentList);i++)
	{
		RUDP_SEGMENT *s = FUNC3(se->SendSegmentList, i);

		if (s->SeqNo <= max_seq)
		{
			if (o == NULL)
			{
				o = FUNC5(NULL);
			}

			FUNC0(o, s);
		}
	}

	if (o != NULL)
	{
		for (i = 0;i < FUNC4(o);i++)
		{
			RUDP_SEGMENT *s = FUNC3(o, i);

			FUNC1(se->SendSegmentList, s);

			FUNC2(s);
		}

		FUNC6(o);
	}
}