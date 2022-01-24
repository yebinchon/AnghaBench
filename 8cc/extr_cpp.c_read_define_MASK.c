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
struct TYPE_7__ {int /*<<< orphan*/  sval; int /*<<< orphan*/  space; } ;
typedef  TYPE_1__ Token ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,char) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6() {
    Token *name = FUNC3();
    Token *tok = FUNC1();
    if (FUNC0(tok, '(') && !tok->space) {
        FUNC2(name);
        return;
    }
    FUNC5(tok);
    FUNC4(name->sval);
}