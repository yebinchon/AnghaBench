#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  label; } ;
struct TYPE_7__ {TYPE_1__ l; } ;
struct TYPE_8__ {char src; int defined; TYPE_2__ u; int /*<<< orphan*/  name; int /*<<< orphan*/  scope; } ;
typedef  TYPE_3__* Symbol ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC ; 
 int /*<<< orphan*/  LABELS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char src ; 
 int /*<<< orphan*/  stmtlabs ; 
 int /*<<< orphan*/  t ; 
 int /*<<< orphan*/  token ; 

__attribute__((used)) static void FUNC7(void) {
	Symbol p = FUNC6(token, stmtlabs);

	if (p == NULL) {
		p = FUNC5(token, &stmtlabs, 0, FUNC);
		p->scope = LABELS;
		p->u.l.label = FUNC3(1);
		p->src = src;
	}
	if (p->defined)
		FUNC1("redefinition of label `%s' previously defined at %w\n", p->name, &p->src);

	p->defined = 1;
	FUNC0(p->u.l.label);
	t = FUNC4();
	FUNC2(':');
}