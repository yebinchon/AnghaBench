#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_3__ {scalar_t__ kind; int /*<<< orphan*/  varname; int /*<<< orphan*/  ty; struct TYPE_3__* declvar; } ;
typedef  TYPE_1__ Node ;

/* Variables and functions */
 scalar_t__ AST_DECL ; 
 scalar_t__ AST_LVAR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(Vector *params, Vector *vars) {
    for (int i = 0; i < FUNC4(vars); i++) {
        Node *decl = FUNC3(vars, i);
        FUNC0(decl->kind == AST_DECL);
        Node *var = decl->declvar;
        FUNC0(var->kind == AST_LVAR);
        for (int j = 0; j < FUNC4(params); j++) {
            Node *param = FUNC3(params, j);
            FUNC0(param->kind == AST_LVAR);
            if (FUNC2(param->varname, var->varname))
                continue;
            param->ty = var->ty;
            goto found;
        }
        FUNC1("missing parameter: %s", var->varname);
    found:;
    }
}