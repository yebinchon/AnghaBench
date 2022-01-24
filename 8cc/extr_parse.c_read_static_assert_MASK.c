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
struct TYPE_5__ {scalar_t__ kind; int /*<<< orphan*/  sval; } ;
typedef  TYPE_1__ Token ;

/* Variables and functions */
 scalar_t__ TSTRING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 TYPE_1__* FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5() {
    FUNC1('(');
    int val = FUNC3();
    FUNC1(',');
    Token *tok = FUNC2();
    if (tok->kind != TSTRING)
        FUNC0(tok, "string expected as the second argument for _Static_assert, but got %s", FUNC4(tok));
    FUNC1(')');
    FUNC1(';');
    if (!val)
        FUNC0(tok, "_Static_assert failure: %s", tok->sval);
}