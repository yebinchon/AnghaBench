#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Typespec ;
typedef  int /*<<< orphan*/  SrcPos ;
typedef  int /*<<< orphan*/  Expr ;
typedef  int /*<<< orphan*/  Decl ;

/* Variables and functions */
 int /*<<< orphan*/  TOKEN_ASSIGN ; 
 int /*<<< orphan*/  TOKEN_COLON ; 
 int /*<<< orphan*/  TOKEN_SEMICOLON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 char* FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

Decl *FUNC8(SrcPos pos) {
    const char *name = FUNC5();
    if (FUNC2(TOKEN_ASSIGN)) {
        Expr *expr = FUNC4();
        FUNC0(TOKEN_SEMICOLON);
        return FUNC3(pos, name, NULL, expr);
    } else if (FUNC2(TOKEN_COLON)) {
        Typespec *type = FUNC6();
        Expr *expr = NULL;
        if (FUNC2(TOKEN_ASSIGN)) {
            expr = FUNC4();
        }
        FUNC0(TOKEN_SEMICOLON);
        return FUNC3(pos, name, type, expr);
    } else {
        FUNC1("Expected : or = after var, got %s", FUNC7());
        return NULL;
    }
}