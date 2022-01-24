#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  i; } ;
struct TYPE_16__ {TYPE_1__ v; } ;
struct TYPE_17__ {TYPE_2__ c; } ;
struct TYPE_20__ {TYPE_3__ u; int /*<<< orphan*/  sclass; } ;
struct TYPE_19__ {scalar_t__ op; TYPE_7__** syms; struct TYPE_19__** kids; } ;
struct TYPE_18__ {int /*<<< orphan*/  (* target ) (TYPE_5__*) ;TYPE_7__* (* rmap ) (scalar_t__) ;} ;
struct TYPE_14__ {TYPE_4__ x; } ;
typedef  TYPE_5__* Node ;

/* Variables and functions */
#define  ADDRF 134 
#define  ADDRL 133 
#define  ASGN 132 
#define  CVI 131 
#define  CVP 130 
#define  CVU 129 
 int /*<<< orphan*/  F ; 
#define  INDIR 128 
 TYPE_13__* IR ; 
 scalar_t__ LOAD ; 
 scalar_t__* NeedsReg ; 
 scalar_t__ P ; 
 int /*<<< orphan*/  REGISTER ; 
 scalar_t__ VREG ; 
 int FUNC0 (scalar_t__) ; 
 size_t FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,TYPE_7__*) ; 
 TYPE_7__* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 

__attribute__((used)) static void FUNC9(Node p) {
	if (p == NULL)
		return;
	FUNC9(p->kids[0]);
	FUNC9(p->kids[1]);
	if (NeedsReg[FUNC1(p->op)])
		FUNC6(p, (*IR->x.rmap)(FUNC2(p->op)));
	switch (FUNC0(p->op)) {
	case ADDRF: case ADDRL:
		if (p->syms[0]->sclass == REGISTER)
			p->op = VREG+P;
		break;
	case INDIR:
		if (p->kids[0]->op == VREG+P)
			FUNC6(p, p->kids[0]->syms[0]);
		break;
	case ASGN:
		if (p->kids[0]->op == VREG+P)
			FUNC5(p, 1, p->kids[0]->syms[0]);
		break;
	case CVI: case CVU: case CVP:
		if (FUNC4(p->op) != F
		&&  FUNC3(p->op) <= p->syms[0]->u.c.v.i)
			p->op = LOAD + FUNC2(p->op);
		break;
	}
	(IR->x.target)(p);
}