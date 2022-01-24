#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char* Type ;
struct TYPE_5__ {scalar_t__ scope; char src; int sclass; char* type; int defined; } ;
typedef  TYPE_1__* Symbol ;
typedef  char Coordinate ;

/* Variables and functions */
 int AUTO ; 
 int /*<<< orphan*/  FUNC ; 
 int REGISTER ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char FUNC3 () ; 
 int /*<<< orphan*/  identifiers ; 
 TYPE_1__* FUNC4 (char*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*) ; 
 scalar_t__ level ; 
 TYPE_1__* FUNC9 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 char t ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Symbol FUNC13(int sclass, char *id, Type ty, Coordinate *pos) {
	Symbol p;

	if (FUNC6(ty))
		ty = FUNC10(ty);
	else if (FUNC5(ty))
		ty = FUNC0(ty);
	if (sclass == 0)
		sclass = AUTO;
	else if (sclass != REGISTER) {
		FUNC1("invalid storage class `%k' for `%t%s\n",
			sclass, ty, FUNC11(id ? " %s'" : "' parameter", id));
		sclass = AUTO;
	} else if (FUNC8(ty) || FUNC7(ty)) {
		FUNC12("register declaration ignored for `%t%s\n",
			ty, FUNC11(id ? " %s'" : "' parameter", id));
		sclass = AUTO;
	}

	p = FUNC9(id, identifiers);
	if (p && p->scope == level)
		FUNC1("duplicate declaration for `%s' previously declared at %w\n", id, &p->src);

	else
		p = FUNC4(id, &identifiers, level, FUNC);
	p->sclass = sclass;
	p->src = *pos;
	p->type = ty;
	p->defined = 1;
	if (t == '=') {
		FUNC1("illegal initialization for parameter `%s'\n", id);
		t = FUNC3();
		(void)FUNC2(0);
	}
	return p;
}