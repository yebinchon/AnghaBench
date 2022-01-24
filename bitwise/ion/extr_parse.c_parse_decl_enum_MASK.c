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
typedef  int /*<<< orphan*/  EnumItem ;
typedef  int /*<<< orphan*/  Decl ;

/* Variables and functions */
 int /*<<< orphan*/  TOKEN_ASSIGN ; 
 int /*<<< orphan*/  TOKEN_COMMA ; 
 int /*<<< orphan*/  TOKEN_LBRACE ; 
 int /*<<< orphan*/  TOKEN_NAME ; 
 int /*<<< orphan*/  TOKEN_RBRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char* FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 () ; 

Decl *FUNC9(SrcPos pos) {
    const char *name = NULL;
    if (FUNC3(TOKEN_NAME)) {
        name = FUNC7();
    }
    Typespec *type = NULL;
    if (FUNC4(TOKEN_ASSIGN)) {
        type = FUNC8();
    }
    FUNC2(TOKEN_LBRACE);
    EnumItem *items = NULL;
    while (!FUNC3(TOKEN_RBRACE)) {
        FUNC1(items, FUNC6());
        if (!FUNC4(TOKEN_COMMA)) {
            break;
        }
    }
    FUNC2(TOKEN_RBRACE);
    return FUNC5(pos, name, type, items, FUNC0(items));
}