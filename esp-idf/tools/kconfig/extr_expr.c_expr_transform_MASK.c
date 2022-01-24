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
struct TYPE_8__ {TYPE_3__* sym; struct expr* expr; } ;
struct TYPE_7__ {struct expr* expr; TYPE_3__* sym; } ;
struct expr {int type; TYPE_2__ left; TYPE_1__ right; } ;
struct TYPE_9__ {char* name; int /*<<< orphan*/  type; } ;

/* Variables and functions */
#define  E_AND 138 
#define  E_EQUAL 137 
#define  E_GEQ 136 
#define  E_GTH 135 
#define  E_LEQ 134 
#define  E_LIST 133 
#define  E_LTH 132 
#define  E_NOT 131 
#define  E_OR 130 
#define  E_SYMBOL 129 
#define  E_UNEQUAL 128 
 int /*<<< orphan*/  S_BOOLEAN ; 
 void* FUNC0 (int const,struct expr*) ; 
 void* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct expr*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 TYPE_3__ symbol_mod ; 
 TYPE_3__ symbol_no ; 
 TYPE_3__ symbol_yes ; 

struct expr *FUNC4(struct expr *e)
{
	struct expr *tmp;

	if (!e)
		return NULL;
	switch (e->type) {
	case E_EQUAL:
	case E_GEQ:
	case E_GTH:
	case E_LEQ:
	case E_LTH:
	case E_UNEQUAL:
	case E_SYMBOL:
	case E_LIST:
		break;
	default:
		e->left.expr = FUNC4(e->left.expr);
		e->right.expr = FUNC4(e->right.expr);
	}

	switch (e->type) {
	case E_EQUAL:
		if (e->left.sym->type != S_BOOLEAN)
			break;
		if (e->right.sym == &symbol_no) {
			e->type = E_NOT;
			e->left.expr = FUNC1(e->left.sym);
			e->right.sym = NULL;
			break;
		}
		if (e->right.sym == &symbol_mod) {
			FUNC3("boolean symbol %s tested for 'm'? test forced to 'n'\n", e->left.sym->name);
			e->type = E_SYMBOL;
			e->left.sym = &symbol_no;
			e->right.sym = NULL;
			break;
		}
		if (e->right.sym == &symbol_yes) {
			e->type = E_SYMBOL;
			e->right.sym = NULL;
			break;
		}
		break;
	case E_UNEQUAL:
		if (e->left.sym->type != S_BOOLEAN)
			break;
		if (e->right.sym == &symbol_no) {
			e->type = E_SYMBOL;
			e->right.sym = NULL;
			break;
		}
		if (e->right.sym == &symbol_mod) {
			FUNC3("boolean symbol %s tested for 'm'? test forced to 'y'\n", e->left.sym->name);
			e->type = E_SYMBOL;
			e->left.sym = &symbol_yes;
			e->right.sym = NULL;
			break;
		}
		if (e->right.sym == &symbol_yes) {
			e->type = E_NOT;
			e->left.expr = FUNC1(e->left.sym);
			e->right.sym = NULL;
			break;
		}
		break;
	case E_NOT:
		switch (e->left.expr->type) {
		case E_NOT:
			// !!a -> a
			tmp = e->left.expr->left.expr;
			FUNC2(e->left.expr);
			FUNC2(e);
			e = tmp;
			e = FUNC4(e);
			break;
		case E_EQUAL:
		case E_UNEQUAL:
			// !a='x' -> a!='x'
			tmp = e->left.expr;
			FUNC2(e);
			e = tmp;
			e->type = e->type == E_EQUAL ? E_UNEQUAL : E_EQUAL;
			break;
		case E_LEQ:
		case E_GEQ:
			// !a<='x' -> a>'x'
			tmp = e->left.expr;
			FUNC2(e);
			e = tmp;
			e->type = e->type == E_LEQ ? E_GTH : E_LTH;
			break;
		case E_LTH:
		case E_GTH:
			// !a<'x' -> a>='x'
			tmp = e->left.expr;
			FUNC2(e);
			e = tmp;
			e->type = e->type == E_LTH ? E_GEQ : E_LEQ;
			break;
		case E_OR:
			// !(a || b) -> !a && !b
			tmp = e->left.expr;
			e->type = E_AND;
			e->right.expr = FUNC0(E_NOT, tmp->right.expr);
			tmp->type = E_NOT;
			tmp->right.expr = NULL;
			e = FUNC4(e);
			break;
		case E_AND:
			// !(a && b) -> !a || !b
			tmp = e->left.expr;
			e->type = E_OR;
			e->right.expr = FUNC0(E_NOT, tmp->right.expr);
			tmp->type = E_NOT;
			tmp->right.expr = NULL;
			e = FUNC4(e);
			break;
		case E_SYMBOL:
			if (e->left.expr->left.sym == &symbol_yes) {
				// !'y' -> 'n'
				tmp = e->left.expr;
				FUNC2(e);
				e = tmp;
				e->type = E_SYMBOL;
				e->left.sym = &symbol_no;
				break;
			}
			if (e->left.expr->left.sym == &symbol_mod) {
				// !'m' -> 'm'
				tmp = e->left.expr;
				FUNC2(e);
				e = tmp;
				e->type = E_SYMBOL;
				e->left.sym = &symbol_mod;
				break;
			}
			if (e->left.expr->left.sym == &symbol_no) {
				// !'n' -> 'y'
				tmp = e->left.expr;
				FUNC2(e);
				e = tmp;
				e->type = E_SYMBOL;
				e->left.sym = &symbol_yes;
				break;
			}
			break;
		default:
			;
		}
		break;
	default:
		;
	}
	return e;
}