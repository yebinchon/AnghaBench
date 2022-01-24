#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  list_ty ;
struct TYPE_9__ {struct TYPE_9__* link; TYPE_2__** kids; TYPE_1__** syms; int /*<<< orphan*/  op; } ;
struct TYPE_8__ {TYPE_1__** syms; int /*<<< orphan*/  op; } ;
struct TYPE_7__ {scalar_t__ scope; } ;
typedef  TYPE_3__* Node ;

/* Variables and functions */
 scalar_t__ ADDRG ; 
 scalar_t__ JUMP ; 
 scalar_t__ LABELS ; 
 scalar_t__ P ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ V ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * temps ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static Node FUNC6(Node p) {
	Node q;
	list_ty forest = FUNC1(0);

	for (q = p; p != NULL; p = p->link)
		if (FUNC4(p->op) == JUMP+V && FUNC4(p->kids[0]->op) == ADDRG+P
		&& p->kids[0]->syms[0]->scope == LABELS) {
			p->syms[0] = p->kids[0]->syms[0];
			p->kids[0] = NULL;
		}
	for (p = q; p != NULL; p = p->link)
		FUNC0(forest, FUNC5(p));
	FUNC2(FUNC3(forest));
	temps = NULL;
	return q;
}