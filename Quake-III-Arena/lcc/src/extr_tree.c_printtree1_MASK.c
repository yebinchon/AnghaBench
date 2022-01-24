#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* Tree ;
struct TYPE_12__ {int /*<<< orphan*/  name; } ;
struct TYPE_10__ {TYPE_1__* sym; int /*<<< orphan*/  v; TYPE_6__* field; } ;
struct TYPE_11__ {scalar_t__ op; int node; struct TYPE_11__** kids; TYPE_2__ u; int /*<<< orphan*/  type; } ;
struct TYPE_9__ {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ CNST ; 
 scalar_t__ FIELD ; 
 int FUNC0 (TYPE_3__**) ; 
 int FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int* FUNC7 (int) ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(Tree p, int fd, int lev) {
	FILE *f = fd == 1 ? stdout : stderr;
	int i;
	static char blanks[] = "                                                   ";

	if (p == 0 || *FUNC7(i = FUNC5(p)))
		return;
	FUNC3(f, "#%d%S%S", i, blanks, i < 10 ? 2 : i < 100 ? 1 : 0, blanks, lev);
	FUNC3(f, "%s %t", FUNC6(p->op), p->type);
	*FUNC7(i) = 1;
	for (i = 0; i < FUNC0(p->kids); i++)
		if (p->kids[i])
			FUNC3(f, " #%d", FUNC5(p->kids[i]));
	if (p->op == FIELD && p->u.field)
		FUNC3(f, " %s %d..%d", p->u.field->name,
			FUNC2(p->u.field) + FUNC1(p->u.field), FUNC1(p->u.field));
	else if (FUNC4(p->op) == CNST)
		FUNC3(f, " %s", FUNC8(p->type, p->u.v));
	else if (p->u.sym)
		FUNC3(f, " %s", p->u.sym->name);
	if (p->node)
		FUNC3(f, " node=%p", p->node);
	FUNC3(f, "\n");
	for (i = 0; i < FUNC0(p->kids); i++)
		FUNC9(p->kids[i], fd, lev + 1);
}