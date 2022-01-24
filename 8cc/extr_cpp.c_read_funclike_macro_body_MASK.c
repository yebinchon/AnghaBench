#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_7__ {scalar_t__ kind; int /*<<< orphan*/  space; int /*<<< orphan*/  sval; } ;
typedef  TYPE_1__ Token ;
typedef  int /*<<< orphan*/  Map ;

/* Variables and functions */
 scalar_t__ TIDENT ; 
 scalar_t__ TNEWLINE ; 
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static Vector *FUNC5(Map *param) {
    Vector *r = FUNC2();
    for (;;) {
        Token *tok = FUNC1();
        if (tok->kind == TNEWLINE)
            return r;
        if (tok->kind == TIDENT) {
            Token *subst = FUNC3(param, tok->sval);
            if (subst) {
                subst = FUNC0(subst);
                subst->space = tok->space;
                FUNC4(r, subst);
                continue;
            }
        }
        FUNC4(r, tok);
    }
}