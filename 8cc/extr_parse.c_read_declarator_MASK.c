#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vector ;
typedef  int /*<<< orphan*/  Type ;
struct TYPE_6__ {scalar_t__ kind; char* sval; } ;
typedef  TYPE_1__ Token ;

/* Variables and functions */
 int DECL_BODY ; 
 int DECL_CAST ; 
 int DECL_PARAM ; 
 scalar_t__ TIDENT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 TYPE_1__* FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 scalar_t__ FUNC6 (char) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

__attribute__((used)) static Type *FUNC13(char **rname, Type *basety, Vector *params, int ctx) {
    if (FUNC6('(')) {
        // '(' is either beginning of grouping parentheses or of a function parameter list.
        // If the next token is a type name, a parameter list must follow.
        if (FUNC3(FUNC7()))
            return FUNC8(basety, params);
        // If not, it's grouping. In that case we have to read from outside.
        // For example, consider int (*)(), which is "pointer to function returning int".
        // We have only read "int" so far. We don't want to pass "int" to
        // a recursive call, or otherwise we would get "pointer to int".
        // Here, we pass a dummy object to get "pointer to <something>" first,
        // continue reading to get "function returning int", and then combine them.
        Type *stub = FUNC5();
        Type *t = FUNC13(rname, stub, params, ctx);
        FUNC1(')');
        *stub = *FUNC9(basety, params);
        return t;
    }
    if (FUNC6('*')) {
        FUNC10();
        return FUNC13(rname, FUNC4(basety), params, ctx);
    }
    Token *tok = FUNC2();
    if (tok->kind == TIDENT) {
        if (ctx == DECL_CAST)
            FUNC0(tok, "identifier is not expected, but got %s", FUNC11(tok));
        *rname = tok->sval;
        return FUNC9(basety, params);
    }
    if (ctx == DECL_BODY || ctx == DECL_PARAM)
        FUNC0(tok, "identifier, ( or * are expected, but got %s", FUNC11(tok));
    FUNC12(tok);
    return FUNC9(basety, params);
}