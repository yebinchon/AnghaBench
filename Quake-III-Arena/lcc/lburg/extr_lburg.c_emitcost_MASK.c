#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* Tree ;
struct TYPE_6__ {scalar_t__ kind; } ;
struct TYPE_5__ {struct TYPE_5__* right; struct TYPE_5__* left; TYPE_2__* op; } ;
typedef  TYPE_2__* Nonterm ;

/* Variables and functions */
 scalar_t__ TERM ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,TYPE_2__*) ; 
 char* FUNC1 (char*,char*) ; 

__attribute__((used)) static void FUNC2(Tree t, char *v) {
	Nonterm p = t->op;

	if (p->kind == TERM) {
		if (t->left)
			FUNC2(t->left,  FUNC1("LEFT_CHILD(%s)",  v));
		if (t->right)
			FUNC2(t->right, FUNC1("RIGHT_CHILD(%s)", v));
	} else
		FUNC0("((struct %Pstate *)(%s->x.state))->cost[%P%S_NT] + ", v, p);
}