#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  char* Type ;
typedef  TYPE_1__* Tree ;
struct TYPE_8__ {int /*<<< orphan*/  op; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 scalar_t__ CNST ; 
 char* FUNC0 (char*,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inttype ; 
 int /*<<< orphan*/  needconst ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static Tree FUNC7(Type ty) {
	Type aty;
	Tree e;

	needconst++;
	e = FUNC4(0);
	if ((aty = FUNC0(ty, e)) != NULL)
		e = FUNC1(e, aty);
	else {
		FUNC3("invalid initialization type; found `%t' expected `%t'\n",
			e->type,  ty);
		e = FUNC6(FUNC2(0, inttype), ty);
	}
	needconst--;
	if (FUNC5(e->op) != CNST) {
		FUNC3("initializer must be constant\n");
		e = FUNC6(FUNC2(0, inttype), ty);
	}
	return e;
}