#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Type ;
typedef  TYPE_1__* Tree ;
struct TYPE_12__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inttype ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int,TYPE_1__*,TYPE_1__*) ; 

Tree FUNC5(int op, Tree l, Tree r) {
	Type ty = inttype;

	if (FUNC1(l->type) && FUNC1(r->type)) {
		ty = FUNC2(l->type);
		l = FUNC0(l, ty);
		r = FUNC0(r, inttype);
	} else
		FUNC4(op, l, r);
	return FUNC3(op, ty, l, r);
}