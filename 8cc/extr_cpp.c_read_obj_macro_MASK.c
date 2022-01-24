#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_4__ {scalar_t__ kind; } ;
typedef  TYPE_1__ Token ;

/* Variables and functions */
 scalar_t__ TNEWLINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  macros ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(char *name) {
    Vector *body = FUNC3();
    for (;;) {
        Token *tok = FUNC1();
        if (tok->kind == TNEWLINE)
            break;
        FUNC5(body, tok);
    }
    FUNC0(body);
    FUNC4(macros, name, FUNC2(body));
}