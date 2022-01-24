#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ kind; int /*<<< orphan*/ * hideset; scalar_t__ bol; } ;
typedef  TYPE_1__ Token ;

/* Variables and functions */
 scalar_t__ MIN_CPP_TOKEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,char) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 () ; 

Token *FUNC5() {
    Token *tok;
    for (;;) {
        tok = FUNC4();
        if (tok->bol && FUNC1(tok, '#') && tok->hideset == NULL) {
            FUNC3(tok);
            continue;
        }
        FUNC0(tok->kind < MIN_CPP_TOKEN);
        return FUNC2(tok);
    }
}