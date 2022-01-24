#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT64 ;
struct TYPE_6__ {int /*<<< orphan*/  SeqNo; } ;
struct TYPE_5__ {int /*<<< orphan*/  SendSegmentList; } ;
typedef  TYPE_1__ RUDP_SESSION ;
typedef  TYPE_2__ RUDP_SEGMENT ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

UINT64 FUNC2(RUDP_SESSION *se)
{
	RUDP_SEGMENT *s;
	// Validate arguments
	if (se == NULL)
	{
		return 0;
	}

	if (FUNC1(se->SendSegmentList) == 0)
	{
		return 0;
	}

	s = FUNC0(se->SendSegmentList, 0);

	return s->SeqNo;
}