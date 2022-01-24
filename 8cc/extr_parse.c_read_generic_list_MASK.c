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
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 char KDEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 scalar_t__ FUNC4 (char) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Vector *FUNC9(Node **defaultexpr) {
    Vector *r = FUNC3();
    for (;;) {
        if (FUNC4(')'))
            return r;
        Token *tok = FUNC5();
        if (FUNC4(KDEFAULT)) {
            if (*defaultexpr)
                FUNC0(tok, "default expression specified twice");
            FUNC1(':');
            *defaultexpr = FUNC6();
        } else {
            Type *ty = FUNC7();
            FUNC1(':');
            Node *expr = FUNC6();
            FUNC8(r, FUNC2(ty, expr));
        }
        FUNC4(',');
    }
}