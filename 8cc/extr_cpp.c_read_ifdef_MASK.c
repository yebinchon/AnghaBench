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
 scalar_t__ TIDENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  macros ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6() {
    Token *tok = FUNC3();
    if (tok->kind != TIDENT)
        FUNC1(tok, "identifier expected, but got %s", FUNC5(tok));
    FUNC2();
    FUNC0(FUNC4(macros, tok->sval));
}