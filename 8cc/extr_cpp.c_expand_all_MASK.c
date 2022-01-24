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
struct TYPE_6__ {scalar_t__ kind; } ;
typedef  TYPE_1__ Token ;

/* Variables and functions */
 scalar_t__ TEOF ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static Vector *FUNC7(Vector *tokens, Token *tmpl) {
    FUNC3(FUNC6(tokens));
    Vector *r = FUNC0();
    for (;;) {
        Token *tok = FUNC2();
        if (tok->kind == TEOF)
            break;
        FUNC5(r, tok);
    }
    FUNC1(r, tmpl);
    FUNC4();
    return r;
}