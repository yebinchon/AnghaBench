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
 int /*<<< orphan*/  KELLIPSIS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 (char**,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(Vector *types, Vector *vars, bool *ellipsis) {
    bool typeonly = !vars;
    *ellipsis = false;
    for (;;) {
        Token *tok = FUNC7();
        if (FUNC6(KELLIPSIS)) {
            if (FUNC10(types) == 0)
                FUNC2(tok, "at least one parameter is required before \"...\"");
            FUNC3(')');
            *ellipsis = true;
            return;
        }
        char *name;
        Type *ty = FUNC8(&name, typeonly);
        FUNC1(ty);
        FUNC11(types, ty);
        if (!typeonly)
            FUNC11(vars, FUNC0(ty, name));
        tok = FUNC4();
        if (FUNC5(tok, ')'))
            return;
        if (!FUNC5(tok, ','))
            FUNC2(tok, "comma expected, but got %s", FUNC9(tok));
    }
}