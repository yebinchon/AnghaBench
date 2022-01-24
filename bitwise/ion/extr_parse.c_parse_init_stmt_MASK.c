#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Typespec ;
struct TYPE_5__ {scalar_t__ kind; char const* name; int /*<<< orphan*/  pos; } ;
typedef  int /*<<< orphan*/  Stmt ;
typedef  TYPE_1__ Expr ;

/* Variables and functions */
 scalar_t__ EXPR_NAME ; 
 int /*<<< orphan*/  TOKEN_ASSIGN ; 
 int /*<<< orphan*/  TOKEN_COLON ; 
 int /*<<< orphan*/  TOKEN_COLON_ASSIGN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 TYPE_1__* FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  undef_keyword ; 

Stmt *FUNC6(Expr *left) {
    if (FUNC2(TOKEN_COLON_ASSIGN)) {
        if (left->kind != EXPR_NAME) {
            FUNC0(":= must be preceded by a name");
            return NULL;
        }
        return FUNC3(left->pos, left->name, NULL, FUNC4(), false);
    } else if (FUNC2(TOKEN_COLON)) {
        if (left->kind != EXPR_NAME) {
            FUNC0(": must be preceded by a name");
            return NULL;
        }
        const char *name = left->name;
        Typespec *type = FUNC5();
        Expr *expr = NULL;
        bool is_undef = false;
        if (FUNC2(TOKEN_ASSIGN)) {
            is_undef = FUNC1(undef_keyword);
            if (!is_undef) {
                expr = FUNC4();
            }
        }
        return FUNC3(left->pos, name, type, expr, is_undef);
    } else {
        return NULL;
    }
}