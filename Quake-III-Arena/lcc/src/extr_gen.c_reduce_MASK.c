#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
struct TYPE_15__ {int inst; } ;
struct TYPE_18__ {TYPE_4__** syms; TYPE_2__ x; } ;
struct TYPE_16__ {int /*<<< orphan*/  usecount; } ;
struct TYPE_17__ {TYPE_3__ x; int /*<<< orphan*/  name; scalar_t__ temporary; } ;
struct TYPE_14__ {short** _nts; scalar_t__* _isinstruction; int /*<<< orphan*/  (* _kids ) (TYPE_5__*,int,TYPE_5__**) ;} ;
struct TYPE_13__ {TYPE_1__ x; } ;
typedef  TYPE_5__* Node ;

/* Variables and functions */
 TYPE_12__* IR ; 
 size_t RX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_5__*,int) ; 
 TYPE_5__* FUNC4 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int,TYPE_5__**) ; 

__attribute__((used)) static void FUNC6(Node p, int nt) {
	int rulenum, i;
	short *nts;
	Node kids[10];

	p = FUNC4(p, nt);
	rulenum = FUNC3(p, nt);
	nts = IR->x._nts[rulenum];
	(*IR->x._kids)(p, rulenum, kids);
	for (i = 0; nts[i]; i++)
		FUNC6(kids[i], nts[i]);
	if (IR->x._isinstruction[rulenum]) {
		FUNC0(p->x.inst == 0 || p->x.inst == nt);
		p->x.inst = nt;
		if (p->syms[RX] && p->syms[RX]->temporary) {
			FUNC1(FUNC2(stderr, "(using %s)\n", p->syms[RX]->name));
			p->syms[RX]->x.usecount++;
		}
	}
}