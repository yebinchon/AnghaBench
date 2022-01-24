#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ mbuf_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 

mbuf_t
FUNC2(mbuf_t head, mbuf_t body, mbuf_t tail)
{
	mbuf_t mb;

	for (mb = head; mb && FUNC0(mb); mb = FUNC0(mb))
		;
	if (mb)
		FUNC1(mb, body);
	for (mb = body; mb && FUNC0(mb); mb = FUNC0(mb))
		;
	if (mb)
		FUNC1(mb, tail);
	mb = head ? head : (body ? body : tail);
	return (mb);
}