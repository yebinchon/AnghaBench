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
struct TYPE_7__ {scalar_t__ kind; } ;
typedef  TYPE_1__ Stmt ;
typedef  int /*<<< orphan*/  SrcPos ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 scalar_t__ STMT_INIT ; 
 int /*<<< orphan*/  TOKEN_LBRACE ; 
 int /*<<< orphan*/  TOKEN_LPAREN ; 
 int /*<<< orphan*/  TOKEN_RPAREN ; 
 int /*<<< orphan*/  TOKEN_SEMICOLON ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 TYPE_1__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

Stmt *FUNC8(SrcPos pos) {
    Stmt *init = NULL;
    Expr *cond = NULL;
    Stmt *next = NULL;
    if (!FUNC2(TOKEN_LBRACE)) {
        FUNC1(TOKEN_LPAREN);
        if (!FUNC2(TOKEN_SEMICOLON)) {
            init = FUNC6();
        }
        if (FUNC3(TOKEN_SEMICOLON)) {
            if (!FUNC2(TOKEN_SEMICOLON)) {
                cond = FUNC5();
            }
            if (FUNC3(TOKEN_SEMICOLON)) {
                if (!FUNC2(TOKEN_RPAREN)) {
                    next = FUNC6();
                    if (next->kind == STMT_INIT) {
                        FUNC0("Init statements not allowed in for-statement's next clause");
                    }
                }
            }
        }
        FUNC1(TOKEN_RPAREN);
    }
    return FUNC4(pos, init, cond, next, FUNC7());
}