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
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_7__ {scalar_t__ kind; } ;
typedef  TYPE_1__ Token ;

/* Variables and functions */
 scalar_t__ TEOF ; 
 scalar_t__ TIDENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* FUNC1 () ; 
 scalar_t__ FUNC2 (TYPE_1__*,char) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 TYPE_1__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static bool FUNC11() {
    Vector *buf = FUNC4();
    bool r = false;
    for (;;) {
        Token *tok = FUNC1();
        FUNC10(buf, tok);
        if (tok->kind == TEOF)
            FUNC0("premature end of input");
        if (FUNC2(tok, ';'))
            break;
        if (FUNC3(tok))
            continue;
        if (FUNC2(tok, '(')) {
            FUNC6(buf);
            continue;
        }
        if (tok->kind != TIDENT)
            continue;
        if (!FUNC2(FUNC5(), '('))
            continue;
        FUNC10(buf, FUNC1());
        FUNC6(buf);
        r = (FUNC2(FUNC5(), '{') || FUNC3(FUNC5()));
        break;
    }
    while (FUNC8(buf) > 0)
        FUNC7(FUNC9(buf));
    return r;
}