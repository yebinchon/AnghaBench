#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  t ;
typedef  scalar_t__ UINT64 ;
struct TYPE_10__ {scalar_t__ SeqNo; } ;
struct TYPE_9__ {int /*<<< orphan*/  SendSegmentList; } ;
typedef  int /*<<< orphan*/  RUDP_STACK ;
typedef  TYPE_1__ RUDP_SESSION ;
typedef  TYPE_2__ RUDP_SEGMENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 

void FUNC4(RUDP_STACK *r, RUDP_SESSION *se, UINT64 seq)
{
	RUDP_SEGMENT t;
	RUDP_SEGMENT *s;
	// Validate arguments
	if (r == NULL || se == NULL || seq == 0)
	{
		return;
	}

	FUNC3(&t, sizeof(t));
	t.SeqNo = seq;

	s = FUNC2(se->SendSegmentList, &t);
	if (s == NULL)
	{
		return;
	}

	FUNC0(se->SendSegmentList, s);
	FUNC1(s);
}