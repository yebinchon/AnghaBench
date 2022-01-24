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
typedef  int /*<<< orphan*/  Vector ;
typedef  int /*<<< orphan*/  Type ;
typedef  int /*<<< orphan*/  Token ;

/* Variables and functions */
 char KELLIPSIS ; 
 char KVOID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 scalar_t__ FUNC6 (char) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  type_int ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Type *FUNC13(Vector *paramvars, Type *rettype) {
    // C11 6.7.6.3p10: A parameter list with just "void" specifies that
    // the function has no parameters.
    Token *tok = FUNC1();
    if (FUNC2(tok, KVOID) && FUNC6(')'))
        return FUNC4(rettype, FUNC5(), false, false);

    // C11 6.7.6.3p14: K&R-style un-prototyped declaration or
    // function definition having no parameters.
    // We return a type representing K&R-style declaration here.
    // If this is actually part of a declartion, the type will be fixed later.
    if (FUNC2(tok, ')'))
        return FUNC4(rettype, FUNC5(), true, true);
    FUNC10(tok);

    Token *tok2 = FUNC7();
    if (FUNC6(KELLIPSIS))
        FUNC0(tok2, "at least one parameter is required before \"...\"");
    if (FUNC3(FUNC7())) {
        bool ellipsis;
        Vector *paramtypes = FUNC5();
        FUNC8(paramtypes, paramvars, &ellipsis);
        return FUNC4(rettype, paramtypes, ellipsis, false);
    }
    if (!paramvars)
        FUNC0(tok, "invalid function definition");
    FUNC9(paramvars);
    Vector *paramtypes = FUNC5();
    for (int i = 0; i < FUNC11(paramvars); i++)
        FUNC12(paramtypes, type_int);
    return FUNC4(rettype, paramtypes, false, true);
}