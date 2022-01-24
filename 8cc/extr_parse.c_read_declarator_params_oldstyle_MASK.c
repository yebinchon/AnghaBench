#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_5__ {scalar_t__ kind; int /*<<< orphan*/  sval; } ;
typedef  TYPE_1__ Token ;

/* Variables and functions */
 scalar_t__ TIDENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 () ; 
 scalar_t__ FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  type_int ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(Vector *vars) {
    for (;;) {
        Token *tok = FUNC2();
        if (tok->kind != TIDENT)
            FUNC1(tok, "identifier expected, but got %s", FUNC4(tok));
        FUNC5(vars, FUNC0(type_int, tok->sval));
        if (FUNC3(')'))
            return;
        if (!FUNC3(','))
            FUNC1(tok, "comma expected, but got %s", FUNC4(FUNC2()));
    }
}