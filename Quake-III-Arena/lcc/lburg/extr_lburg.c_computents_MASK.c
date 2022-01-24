#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* Tree ;
struct TYPE_5__ {scalar_t__ kind; char* name; } ;
struct TYPE_4__ {struct TYPE_4__* left; struct TYPE_4__* right; TYPE_2__* op; } ;
typedef  TYPE_2__* Nonterm ;

/* Variables and functions */
 scalar_t__ NONTERM ; 
 char* prefix ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static char *FUNC2(Tree t, char *bp) {
	if (t) {
		Nonterm p = t->op;
		if (p->kind == NONTERM) {
			FUNC0(bp, "%s_%s_NT, ", prefix, p->name);
			bp += FUNC1(bp);
		} else
			bp = FUNC2(t->right, FUNC2(t->left,  bp));
	}
	return bp;
}