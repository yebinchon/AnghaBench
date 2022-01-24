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
struct TYPE_7__ {scalar_t__ kind; char* sval; } ;
typedef  TYPE_1__ Token ;
typedef  int /*<<< orphan*/  Map ;

/* Variables and functions */
 char KELLIPSIS ; 
 scalar_t__ TIDENT ; 
 scalar_t__ TNEWLINE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static bool FUNC8(Token *name, Map *param) {
    int pos = 0;
    for (;;) {
        Token *tok = FUNC3();
        if (FUNC2(tok, ')'))
            return false;
        if (pos) {
            if (!FUNC2(tok, ','))
                FUNC0(tok, ", expected, but got %s", FUNC7(tok));
            tok = FUNC3();
        }
        if (tok->kind == TNEWLINE)
            FUNC0(name, "missing ')' in macro parameter list");
        if (FUNC2(tok, KELLIPSIS)) {
            FUNC5(param, "__VA_ARGS__", FUNC4(pos++, true));
            FUNC1(')');
            return true;
        }
        if (tok->kind != TIDENT)
            FUNC0(tok, "identifier expected, but got %s", FUNC7(tok));
        char *arg = tok->sval;
        if (FUNC6(KELLIPSIS)) {
            FUNC1(')');
            FUNC5(param, arg, FUNC4(pos++, true));
            return true;
        }
        FUNC5(param, arg, FUNC4(pos++, false));
    }
}