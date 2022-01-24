#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_13__ {scalar_t__ kind; char* sval; int /*<<< orphan*/  hideset; } ;
typedef  TYPE_1__ Token ;
struct TYPE_14__ {int kind; int /*<<< orphan*/  (* fn ) (TYPE_1__*) ;} ;
typedef  int /*<<< orphan*/  Set ;
typedef  TYPE_2__ Macro ;

/* Variables and functions */
#define  MACRO_FUNC 130 
#define  MACRO_OBJ 129 
#define  MACRO_SPECIAL 128 
 scalar_t__ TIDENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  macros ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 TYPE_1__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,TYPE_2__*) ; 
 TYPE_1__* FUNC8 () ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static Token *FUNC15() {
    Token *tok = FUNC2();
    if (tok->kind != TIDENT)
        return tok;
    char *name = tok->sval;
    Macro *macro = FUNC3(macros, name);
    if (!macro || FUNC10(tok->hideset, name))
        return tok;

    switch (macro->kind) {
    case MACRO_OBJ: {
        Set *hideset = FUNC9(tok->hideset, name);
        Vector *tokens = FUNC13(macro, NULL, hideset);
        FUNC6(tokens, tok);
        FUNC14(tokens);
        return FUNC8();
    }
    case MACRO_FUNC: {
        if (!FUNC4('('))
            return tok;
        Vector *args = FUNC7(tok, macro);
        Token *rparen = FUNC5();
        FUNC1(')');
        Set *hideset = FUNC9(FUNC11(tok->hideset, rparen->hideset), name);
        Vector *tokens = FUNC13(macro, args, hideset);
        FUNC6(tokens, tok);
        FUNC14(tokens);
        return FUNC8();
    }
    case MACRO_SPECIAL:
        macro->fn(tok);
        return FUNC8();
    default:
        FUNC0("internal error");
    }
}