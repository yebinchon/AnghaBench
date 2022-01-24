#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_4__ ;
typedef  struct TYPE_34__   TYPE_2__ ;
typedef  struct TYPE_33__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* Type ;
typedef  TYPE_2__* Tree ;
struct TYPE_35__ {int /*<<< orphan*/  type; } ;
struct TYPE_34__ {int /*<<< orphan*/  op; TYPE_4__* type; } ;
struct TYPE_33__ {long size; TYPE_4__* type; } ;

/* Variables and functions */
 int ADD ; 
 int /*<<< orphan*/  MUL ; 
 scalar_t__ YYcheck ; 
 TYPE_1__* FUNC0 (TYPE_4__*,TYPE_4__*) ; 
 TYPE_2__* FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_4__*) ; 
 TYPE_1__* inttype ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_4__*) ; 
 scalar_t__ FUNC8 (TYPE_4__*) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_2__* FUNC10 (TYPE_1__*,scalar_t__,TYPE_2__*,TYPE_2__*) ; 
 TYPE_1__* FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  signedptr ; 
 TYPE_2__* FUNC12 (int,TYPE_1__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int,TYPE_2__*,TYPE_2__*) ; 
 TYPE_1__* FUNC14 (TYPE_4__*) ; 

__attribute__((used)) static Tree FUNC15(int op, Tree l, Tree r) {
	Type ty = inttype;

	if (FUNC5(l->type) && FUNC5(r->type)) {
		ty = FUNC0(l->type, r->type);
		l = FUNC1(l, ty);
		r = FUNC1(r, ty);		
	} else if (FUNC8(l->type) && FUNC7(r->type))
		return FUNC15(ADD, r, l);
	else if (  FUNC8(r->type) && FUNC7(l->type)
	&& !FUNC6(r->type->type))
		{
			long n;
			ty = FUNC14(r->type);
			n = FUNC14(ty->type)->size;
			if (n == 0)
				FUNC3("unknown size for type `%t'\n", ty->type);
			l = FUNC1(l, FUNC11(l->type));
			if (n > 1)
				l = FUNC9(MUL, FUNC2(signedptr, n), l);
			if (YYcheck && !FUNC4(r->op))		/* omit */
				return FUNC10(ty, YYcheck, r, l);	/* omit */
			return FUNC12(ADD, ty, l, r);
		}

	else
		FUNC13(op, l, r);
	return FUNC12(op, ty, l, r);
}