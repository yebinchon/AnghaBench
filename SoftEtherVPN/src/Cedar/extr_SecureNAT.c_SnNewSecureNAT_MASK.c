#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VH_OPTION ;
struct TYPE_11__ {int /*<<< orphan*/  Virtual; } ;
struct TYPE_10__ {int /*<<< orphan*/  Cedar; } ;
struct TYPE_9__ {TYPE_6__* Nat; int /*<<< orphan*/  lock; TYPE_2__* Hub; int /*<<< orphan*/  Cedar; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  TYPE_1__ SNAT ;
typedef  TYPE_2__ HUB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_6__* FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SnSecureNATThread ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int) ; 

SNAT *FUNC7(HUB *h, VH_OPTION *o)
{
	SNAT *s;
	THREAD *t;
	// Validate arguments
	if (h == NULL || o == NULL)
	{
		return NULL;
	}

	s = FUNC6(sizeof(SNAT));
	s->Cedar = h->Cedar;
	s->Hub = h;
	s->lock = FUNC0();

	// Create a NAT
	s->Nat = FUNC2(s, o);

	// Initialize the virtual machine
	FUNC4(s->Nat->Virtual);

	// Create a thread
	t = FUNC1(SnSecureNATThread, s);
	FUNC5(t);
	FUNC3(t);

	return s;
}