#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Type ;
typedef  TYPE_3__* Tree ;
struct TYPE_13__ {TYPE_4__* alias; } ;
struct TYPE_16__ {scalar_t__ scope; scalar_t__ sclass; scalar_t__ type; int /*<<< orphan*/  ref; TYPE_1__ u; } ;
struct TYPE_14__ {TYPE_4__* sym; } ;
struct TYPE_15__ {int /*<<< orphan*/  type; TYPE_2__ u; } ;
struct TYPE_12__ {int /*<<< orphan*/  wants_argb; } ;
typedef  TYPE_4__* Symbol ;

/* Variables and functions */
 int ADDRF ; 
 int ADDRG ; 
 int ADDRL ; 
 scalar_t__ EXTERN ; 
 scalar_t__ GLOBAL ; 
 TYPE_11__* IR ; 
 scalar_t__ PARAM ; 
 scalar_t__ STATIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  funcptype ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ refinc ; 
 TYPE_3__* FUNC7 (TYPE_3__*) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  voidptype ; 

Tree FUNC10(Symbol p) {
	int op;
	Tree e;
	Type ty = p->type ? FUNC9(p->type) : voidptype;

	if (p->scope == GLOBAL || p->sclass == STATIC)
		op = ADDRG;
	else if (p->scope == PARAM) {
		op = ADDRF;
		if (FUNC4(p->type) && !IR->wants_argb)
			{
				e = FUNC8(FUNC5(op,voidptype), FUNC6(FUNC6(p->type)), NULL, NULL);
				e->u.sym = p;
				return FUNC7(FUNC7(e));
			}
	} else if (p->sclass == EXTERN) {
		FUNC0(p->u.alias);
		p = p->u.alias;
		op = ADDRG;
	} else
		op = ADDRL;
	p->ref += refinc;
	if (FUNC1(ty))
		e = FUNC8(FUNC5(op,voidptype), p->type,      NULL, NULL);
	else if (FUNC2(ty))
		e = FUNC8(FUNC5(op,funcptype), p->type,      NULL, NULL);
	else
		e = FUNC8(FUNC5(op,voidptype), FUNC6(p->type), NULL, NULL);
	e->u.sym = p;
	if (FUNC3(e->type))
		e = FUNC7(e);
	return e;
}