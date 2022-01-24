#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* Tree ;
typedef  TYPE_2__* Term ;
struct TYPE_10__ {scalar_t__ kind; int arity; } ;
struct TYPE_9__ {int nterms; struct TYPE_9__* right; struct TYPE_9__* left; TYPE_2__* op; } ;

/* Variables and functions */
 scalar_t__ NONTERM ; 
 scalar_t__ TERM ; 
 TYPE_1__* FUNC0 (int) ; 
 TYPE_2__* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 TYPE_2__* FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

Tree FUNC5(char *id, Tree left, Tree right) {
	Tree t = FUNC0(sizeof *t);
	Term p = FUNC1(id);
	int arity = 0;

	if (left && right)
		arity = 2;
	else if (left)
		arity = 1;
	if (p == NULL && arity > 0) {
		FUNC4("undefined terminal `%s'\n", id);
		p = FUNC3(id, -1);
	} else if (p == NULL && arity == 0)
		p = (Term)FUNC2(id);
	else if (p && p->kind == NONTERM && arity > 0) {
		FUNC4("`%s' is a nonterminal\n", id);
		p = FUNC3(id, -1);
	}
	if (p->kind == TERM && p->arity == -1)
		p->arity = arity;
	if (p->kind == TERM && arity != p->arity)
		FUNC4("inconsistent arity for terminal `%s'\n", id);
	t->op = p;
	t->nterms = p->kind == TERM;
	if ((t->left = left) != NULL)
		t->nterms += left->nterms;
	if ((t->right = right) != NULL)
		t->nterms += right->nterms;
	return t;
}