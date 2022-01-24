#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* Term ;
struct TYPE_11__ {int /*<<< orphan*/  nterms; int /*<<< orphan*/  op; } ;
struct TYPE_10__ {int cost; char* code; TYPE_1__* pattern; struct TYPE_10__* next; } ;
struct TYPE_9__ {int arity; TYPE_3__* rules; int /*<<< orphan*/  esn; } ;
struct TYPE_8__ {int nterms; TYPE_4__* right; TYPE_4__* left; int /*<<< orphan*/  op; } ;
typedef  TYPE_3__* Rule ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static void FUNC6(Term p, int ntnumber) {
	Rule r;

	FUNC5("%1case %d: /* %S */\n", p->esn, p);
	switch (p->arity) {
	case 0: case -1:
		break;
	case 1:
		FUNC5("%2%Plabel(LEFT_CHILD(a));\n");
		break;
	case 2:
		FUNC5("%2%Plabel(LEFT_CHILD(a));\n");
		FUNC5("%2%Plabel(RIGHT_CHILD(a));\n");
		break;
	default: FUNC0(0);
	}
	for (r = p->rules; r; r = r->next) {
		char *indent = "\t\t\0";
		switch (p->arity) {
		case 0: case -1:
			FUNC5("%2/* %R */\n", r);
			if (r->cost == -1) {
				FUNC5("%2c = %s;\n", r->code);
				FUNC3("\t\t", r, "c", 0);
			} else
				FUNC3("\t\t", r, r->code, 0);
			break;
		case 1:
			if (r->pattern->nterms > 1) {
				FUNC5("%2if (%1/* %R */\n", r);
				FUNC4(r->pattern->left, "LEFT_CHILD(a)", " ");
				FUNC5("%2) {\n");
				indent = "\t\t\t";
			} else
				FUNC5("%2/* %R */\n", r);
			if (r->pattern->nterms == 2 && r->pattern->left
			&&  r->pattern->right == NULL)
				FUNC2(indent, r->pattern->op, r->pattern->left->op);
			FUNC5("%sc = ", indent);
			FUNC1(r->pattern->left, "LEFT_CHILD(a)");
			FUNC5("%s;\n", r->code);
			FUNC3(indent, r, "c", 0);
			if (indent[2])
				FUNC5("%2}\n");
			break;
		case 2:
			if (r->pattern->nterms > 1) {
				FUNC5("%2if (%1/* %R */\n", r);
				FUNC4(r->pattern->left,  "LEFT_CHILD(a)",
					r->pattern->right->nterms ? " && " : " ");
				FUNC4(r->pattern->right, "RIGHT_CHILD(a)", " ");
				FUNC5("%2) {\n");
				indent = "\t\t\t";
			} else
				FUNC5("%2/* %R */\n", r);
			FUNC5("%sc = ", indent);
			FUNC1(r->pattern->left,  "LEFT_CHILD(a)");
			FUNC1(r->pattern->right, "RIGHT_CHILD(a)");
			FUNC5("%s;\n", r->code);
			FUNC3(indent, r, "c", 0);
			if (indent[2])
				FUNC5("%2}\n");
			break;
		default: FUNC0(0);
		}
	}
	FUNC5("%2break;\n");
}