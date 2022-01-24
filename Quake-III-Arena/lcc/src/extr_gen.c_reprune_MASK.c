#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ inst; struct node** kids; } ;
struct node {TYPE_1__ x; struct node** kids; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* target ) (struct node*) ;} ;
struct TYPE_6__ {TYPE_2__ x; } ;
typedef  struct node* Node ;

/* Variables and functions */
 TYPE_3__* IR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct node**,struct node*,struct node*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (struct node*) ; 

__attribute__((used)) static int FUNC3(Node *pp, int k, int n, Node p) {
	struct node x, *q = *pp;

	if (q == NULL || k > n)
		return k;
	else if (q->x.inst == 0)
		return FUNC3(&q->kids[1],
			FUNC3(&q->kids[0], k, n, p), n, p);
	if (k == n) {
		FUNC0(FUNC1(stderr, "(reprune changes %x from %x to %x)\n", pp, *pp, p->x.kids[n]));
		*pp = p->x.kids[n];
		x = *p;
		(IR->x.target)(&x);
	}
	return k + 1;
}