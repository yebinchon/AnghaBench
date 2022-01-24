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
struct TYPE_13__ {scalar_t__ kind; } ;
typedef  TYPE_1__ Type ;
struct TYPE_14__ {scalar_t__ kind; char* sval; } ;
typedef  TYPE_2__ Token ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 scalar_t__ KIND_ENUM ; 
 scalar_t__ TIDENT ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,char*) ; 
 TYPE_2__* FUNC3 () ; 
 scalar_t__ FUNC4 (TYPE_2__*,char) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char) ; 
 TYPE_2__* FUNC8 () ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  tags ; 
 char* FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/ * type_enum ; 
 TYPE_1__* type_int ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 

__attribute__((used)) static Type *FUNC12() {
    char *tag = NULL;
    Token *tok = FUNC3();

    // Enum is handled as a synonym for int. We only check if the enum
    // is declared.
    if (tok->kind == TIDENT) {
        tag = tok->sval;
        tok = FUNC3();
    }
    if (tag) {
        Type *ty = FUNC5(tags, tag);
        if (ty && ty->kind != KIND_ENUM)
            FUNC2(tok, "declarations of %s does not match", tag);
    }
    if (!FUNC4(tok, '{')) {
        if (!tag || !FUNC5(tags, tag))
            FUNC2(tok, "enum tag %s is not defined", tag);
        FUNC11(tok);
        return type_int;
    }
    if (tag)
        FUNC6(tags, tag, type_enum);

    int val = 0;
    for (;;) {
        tok = FUNC3();
        if (FUNC4(tok, '}'))
            break;
        if (tok->kind != TIDENT)
            FUNC2(tok, "identifier expected, but got %s", FUNC10(tok));
        char *name = tok->sval;

        if (FUNC7('='))
            val = FUNC9();
        Node *constval = FUNC0(type_int, val++);
        FUNC6(FUNC1(), name, constval);
        if (FUNC7(','))
            continue;
        if (FUNC7('}'))
            break;
        FUNC2(FUNC8(), "',' or '}' expected, but got %s", FUNC10(FUNC8()));
    }
    return type_int;
}