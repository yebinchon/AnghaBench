#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_11__ {scalar_t__ kind; int bol; int space; } ;
typedef  TYPE_1__ Token ;

/* Variables and functions */
 scalar_t__ TEOF ; 
 scalar_t__ TNEWLINE ; 
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static Vector *FUNC8(Token *ident, bool *end, bool readall) {
    Vector *r = FUNC4();
    int level = 0;
    for (;;) {
        Token *tok = FUNC3();
        if (tok->kind == TEOF)
            FUNC1(ident, "unterminated macro argument list");
        if (tok->kind == TNEWLINE)
            continue;
        if (tok->bol && FUNC2(tok, '#')) {
            FUNC5(tok);
            continue;
        }
        if (level == 0 && FUNC2(tok, ')')) {
            FUNC6(tok);
            *end = true;
            return r;
        }
        if (level == 0 && FUNC2(tok, ',') && !readall)
            return r;
        if (FUNC2(tok, '('))
            level++;
        if (FUNC2(tok, ')'))
            level--;
        // C11 6.10.3p10: Within the macro argument list,
        // newline is considered a normal whitespace character.
        // I don't know why the standard specifies such a minor detail,
        // but the difference of newline and space is observable
        // if you stringize tokens using #.
        if (tok->bol) {
            tok = FUNC0(tok);
            tok->bol = false;
            tok->space = true;
        }
        FUNC7(r, tok);
    }
}