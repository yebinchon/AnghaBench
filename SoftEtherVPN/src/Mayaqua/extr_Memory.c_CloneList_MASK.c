#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  sorted; int /*<<< orphan*/  num_reserved; int /*<<< orphan*/  num_item; int /*<<< orphan*/  p; int /*<<< orphan*/  cmp; } ;
typedef  TYPE_1__ LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

LIST *FUNC4(LIST *o)
{
	LIST *n = FUNC2(o->cmp);

	// Memory reallocation
	FUNC0(n->p);
	n->p = FUNC3(o);
	n->num_item = n->num_reserved = FUNC1(o);
	n->sorted = o->sorted;

	return n;
}