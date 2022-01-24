#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* Type ;
struct TYPE_10__ {scalar_t__ sclass; TYPE_1__* type; } ;
struct TYPE_9__ {scalar_t__ size; struct TYPE_9__* type; } ;
typedef  TYPE_2__* Symbol ;

/* Variables and functions */
 scalar_t__ AUTO ; 
 int /*<<< orphan*/  DATA ; 
 scalar_t__ EXTERN ; 
 int /*<<< orphan*/  LIT ; 
 scalar_t__ STATIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 char FUNC1 () ; 
 TYPE_1__* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 char t ; 

__attribute__((used)) static void FUNC5(Symbol p, int flag) {
	Type ty;

	if (t == '=' || flag) {
		if (p->sclass == STATIC) {
			for (ty = p->type; FUNC3(ty); ty = ty->type)
				;
			FUNC0(p, FUNC4(ty) ? LIT : DATA);
		} else
			FUNC0(p, DATA);
		if (t == '=')
			t = FUNC1();
		ty = FUNC2(p->type, 0);
		if (FUNC3(p->type) && p->type->size == 0)
			p->type = ty;
		if (p->sclass == EXTERN)
			p->sclass = AUTO;
	}
}