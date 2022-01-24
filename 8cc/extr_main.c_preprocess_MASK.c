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
struct TYPE_4__ {scalar_t__ kind; scalar_t__ space; scalar_t__ bol; } ;
typedef  TYPE_1__ Token ;

/* Variables and functions */
 scalar_t__ TEOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 TYPE_1__* FUNC2 () ; 
 char* FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4() {
    for (;;) {
        Token *tok = FUNC2();
        if (tok->kind == TEOF)
            break;
        if (tok->bol)
            FUNC1("\n");
        if (tok->space)
            FUNC1(" ");
        FUNC1("%s", FUNC3(tok));
    }
    FUNC1("\n");
    FUNC0(0);
}