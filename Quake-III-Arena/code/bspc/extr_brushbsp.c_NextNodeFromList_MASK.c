#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef  TYPE_1__ node_t ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__* firstnode ; 
 int /*<<< orphan*/ * lastnode ; 
 int /*<<< orphan*/  nodelistsize ; 
 scalar_t__ numwaiting ; 

node_t *FUNC5(void)
{
	node_t *node;

	FUNC1();
	numwaiting++;
	if (!firstnode)
	{
		if (numwaiting >= FUNC0()) FUNC2(FUNC0());
	} //end if
	FUNC4();

	FUNC3();

	FUNC1();

	numwaiting--;

	node = firstnode;
	if (firstnode)
	{
		firstnode = firstnode->next;
		nodelistsize--;
	} //end if
	if (!firstnode) lastnode = NULL;

	FUNC4();

	return node;
}