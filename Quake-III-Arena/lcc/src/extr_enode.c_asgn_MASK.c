#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_5__* Type ;
typedef  TYPE_6__* Tree ;
struct TYPE_30__ {TYPE_5__* type; } ;
struct TYPE_29__ {TYPE_5__* type; } ;
struct TYPE_27__ {TYPE_3__* sym; } ;
struct TYPE_28__ {TYPE_4__ u; } ;
struct TYPE_24__ {int cfields; } ;
struct TYPE_25__ {TYPE_1__ s; } ;
struct TYPE_26__ {TYPE_2__ u; } ;
typedef  TYPE_7__* Symbol ;

/* Variables and functions */
 scalar_t__ ASGN ; 
 scalar_t__ B ; 
 scalar_t__ INDIR ; 
 TYPE_6__* FUNC0 (scalar_t__,TYPE_6__*,TYPE_6__*) ; 
 TYPE_6__* FUNC1 (TYPE_7__*) ; 
 scalar_t__ FUNC2 (TYPE_5__*) ; 
 scalar_t__ FUNC3 (TYPE_5__*) ; 
 TYPE_6__* FUNC4 (scalar_t__,TYPE_5__*,TYPE_6__*,TYPE_6__*) ; 
 TYPE_5__* FUNC5 (TYPE_5__*) ; 

Tree FUNC6(Symbol p, Tree e) {
	if (FUNC2(p->type))
		e = FUNC4(ASGN+B, p->type, FUNC1(p),
			FUNC4(INDIR+B, e->type, e, NULL));
	else {
		Type ty = p->type;
		p->type = FUNC5(p->type);
		if (FUNC3(p->type) && p->type->u.sym->u.s.cfields) {
			p->type->u.sym->u.s.cfields = 0;
			e = FUNC0(ASGN, FUNC1(p), e);
			p->type->u.sym->u.s.cfields = 1;
		} else
			e = FUNC0(ASGN, FUNC1(p), e);
		p->type = ty;
	}
	return e;
}