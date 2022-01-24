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
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 char* FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 () ; 

Decl *FUNC6(SrcPos pos) {
    const char *name = FUNC4();
    Typespec *type = NULL;
    if (FUNC1(TOKEN_COLON)) {
        type = FUNC5();
    }
    FUNC0(TOKEN_ASSIGN);
    Expr *expr = FUNC3();
    FUNC0(TOKEN_SEMICOLON);
    return FUNC2(pos, name, type, expr);
}