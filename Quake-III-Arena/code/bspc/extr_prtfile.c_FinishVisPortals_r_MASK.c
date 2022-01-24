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
struct TYPE_4__ {scalar_t__ planenum; struct TYPE_4__** children; scalar_t__ detail_seperator; } ;
typedef  TYPE_1__ node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ PLANENUM_LEAF ; 

void FUNC1 (node_t *node)
{
	if (node->planenum == PLANENUM_LEAF)
		return;

	if (node->detail_seperator)
	{
		FUNC0 (node);
		return;
	}

	FUNC1 (node->children[0]);
	FUNC1 (node->children[1]);
}