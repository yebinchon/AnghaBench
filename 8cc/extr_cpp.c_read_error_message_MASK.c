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
struct TYPE_4__ {scalar_t__ kind; scalar_t__ space; } ;
typedef  TYPE_1__ Token ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 scalar_t__ TNEWLINE ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char) ; 
 TYPE_1__* FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static char *FUNC7() {
    Buffer *b = FUNC5();
    for (;;) {
        Token *tok = FUNC4();
        if (tok->kind == TNEWLINE)
            return FUNC0(b);
        if (FUNC1(b) != 0 && tok->space)
            FUNC3(b, ' ');
        FUNC2(b, "%s", FUNC6(tok));
    }
}