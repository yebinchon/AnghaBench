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
struct TYPE_3__ {int /*<<< orphan*/  itemweightconfig; } ;
typedef  TYPE_1__ bot_goalstate_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(int parent1, int parent2, int child)
{
	bot_goalstate_t *p1, *p2, *c;

	p1 = FUNC0(parent1);
	p2 = FUNC0(parent2);
	c = FUNC0(child);

	FUNC1(p1->itemweightconfig, p2->itemweightconfig,
									c->itemweightconfig);
}