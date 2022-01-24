#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_3__* next; } ;
struct TYPE_6__ {TYPE_1__ pstack_head; } ;
typedef  TYPE_2__ threaddata_t ;
struct TYPE_7__ {int /*<<< orphan*/ * leaf; struct TYPE_7__* next; } ;
typedef  TYPE_3__ pstack_t ;
typedef  int /*<<< orphan*/  leaf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

void FUNC1 (leaf_t *leaf, threaddata_t *thread)
{
	pstack_t	*p, *p2;

	for (p=thread->pstack_head.next ; p ; p=p->next)
	{
//		_printf ("=");
		if (p->leaf == leaf)
			FUNC0 ("CheckStack: leaf recursion");
		for (p2=thread->pstack_head.next ; p2 != p ; p2=p2->next)
			if (p2->leaf == p->leaf)
				FUNC0 ("CheckStack: late leaf recursion");
	}
//	_printf ("\n");
}