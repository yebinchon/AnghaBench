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
struct TYPE_4__ {int /*<<< orphan*/  first; struct TYPE_4__* next; } ;
typedef  TYPE_1__ bot_matchtemplate_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(bot_matchtemplate_t *mt)
{
	bot_matchtemplate_t *nextmt;

	for (; mt; mt = nextmt)
	{
		nextmt = mt->next;
		FUNC0(mt->first);
		FUNC1(mt);
	} //end for
}