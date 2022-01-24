#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_3__* activatestack; } ;
typedef  TYPE_1__ bot_state_t ;
struct TYPE_5__ {int inuse; struct TYPE_5__* next; int /*<<< orphan*/  justused_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int qfalse ; 
 int qtrue ; 

int FUNC2(bot_state_t *bs) {
	if (!bs->activatestack)
		return qfalse;
	FUNC0(bs->activatestack, qtrue);
	bs->activatestack->inuse = qfalse;
	bs->activatestack->justused_time = FUNC1();
	bs->activatestack = bs->activatestack->next;
	return qtrue;
}