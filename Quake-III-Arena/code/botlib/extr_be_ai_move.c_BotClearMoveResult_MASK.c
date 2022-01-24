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
struct TYPE_3__ {scalar_t__ flags; scalar_t__ traveltype; scalar_t__ blockentity; void* blocked; scalar_t__ type; void* failure; } ;
typedef  TYPE_1__ bot_moveresult_t ;

/* Variables and functions */
 void* qfalse ; 

void FUNC0(bot_moveresult_t *moveresult)
{
	moveresult->failure = qfalse;
	moveresult->type = 0;
	moveresult->blocked = qfalse;
	moveresult->blockentity = 0;
	moveresult->traveltype = 0;
	moveresult->flags = 0;
}