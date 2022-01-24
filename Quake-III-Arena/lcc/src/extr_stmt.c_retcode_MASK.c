#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_38__   TYPE_3__ ;
typedef  struct TYPE_37__   TYPE_2__ ;
typedef  struct TYPE_36__   TYPE_21__ ;
typedef  struct TYPE_35__   TYPE_20__ ;
typedef  struct TYPE_34__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * Type ;
typedef  TYPE_2__* Tree ;
struct TYPE_38__ {scalar_t__ scope; int /*<<< orphan*/  name; scalar_t__ generated; scalar_t__ computed; } ;
struct TYPE_37__ {int /*<<< orphan*/  type; TYPE_1__** kids; } ;
struct TYPE_36__ {int /*<<< orphan*/  type; } ;
struct TYPE_35__ {scalar_t__ returns; } ;
struct TYPE_34__ {TYPE_2__** kids; } ;
typedef  TYPE_3__* Symbol ;

/* Variables and functions */
 int /*<<< orphan*/  ASGN ; 
 int /*<<< orphan*/  AUTO ; 
 scalar_t__ B ; 
 scalar_t__ CALL ; 
 scalar_t__ PARAM ; 
 int /*<<< orphan*/  RET ; 
 scalar_t__ RIGHT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_21__*,TYPE_2__*) ; 
 TYPE_2__* FUNC2 (TYPE_3__*,TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC4 (char*,TYPE_2__*) ; 
 TYPE_2__* FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_21__* cfunc ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,char*) ; 
 TYPE_20__ events ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC9 (TYPE_3__*) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  level ; 
 TYPE_3__* FUNC13 (TYPE_2__*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ) ; 
 TYPE_3__* retv ; 
 TYPE_2__* FUNC17 (TYPE_2__*) ; 
 TYPE_2__* FUNC18 (scalar_t__,int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*,...) ; 

void FUNC21(Tree p) {
	Type ty;

	if (p == NULL) {
		if (events.returns)
			FUNC1(events.returns, cfunc, NULL);
		return;
	}
	p = FUNC15(p);
	ty = FUNC4(FUNC7(cfunc->type), p);
	if (ty == NULL) {
		FUNC6("illegal return type; found `%t' expected `%t'\n",
			p->type, FUNC7(cfunc->type));
		return;
	}
	p = FUNC5(p, ty);
	if (retv)
		{
			if (FUNC10(p))
				p = FUNC18(RIGHT, p->type,
					FUNC18(CALL+B, p->type,
						p->kids[0]->kids[0], FUNC9(retv)),
					FUNC17(FUNC9(retv)));
			else
				p = FUNC3(ASGN, FUNC17(FUNC9(retv)), p);
			FUNC19(p, 0, 0);
			if (events.returns)
				FUNC1(events.returns, cfunc, FUNC17(FUNC9(retv)));
			return;
		}
	if (events.returns)
		{
			Symbol t1 = FUNC8(AUTO, p->type, level);
			FUNC0(t1);
			FUNC19(FUNC2(t1, p), 0, 0);
			FUNC1(events.returns, cfunc, FUNC9(t1));
			p = FUNC9(t1);
		}
	if (!FUNC11(p->type))
		p = FUNC5(p, FUNC16(p->type));
	if (FUNC12(p->type))
		{
			Symbol q = FUNC13(p);
			if (q && (q->computed || q->generated))
				FUNC20("pointer to a %s is an illegal return value\n",
					q->scope == PARAM ? "parameter" : "local");
			else if (q)
				FUNC20("pointer to %s `%s' is an illegal return value\n",
					q->scope == PARAM ? "parameter" : "local", q->name);
		}
	FUNC19(FUNC18(FUNC14(RET,p->type), p->type, p, NULL), 0, 0);
}