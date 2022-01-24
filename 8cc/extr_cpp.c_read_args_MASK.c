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
typedef  int /*<<< orphan*/  Token ;
struct TYPE_4__ {scalar_t__ nargs; } ;
typedef  TYPE_1__ Macro ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static Vector *FUNC6(Token *tok, Macro *macro) {
    if (macro->nargs == 0 && FUNC2(FUNC4(), ')')) {
        // If a macro M has no parameter, argument list of M()
        // is an empty list. If it has one parameter,
        // argument list of M() is a list containing an empty list.
        return FUNC3();
    }
    Vector *args = FUNC0(tok, macro);
    if (FUNC5(args) != macro->nargs)
        FUNC1(tok, "macro argument number does not match");
    return args;
}