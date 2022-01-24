#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ kind; int /*<<< orphan*/  sval; } ;
typedef  TYPE_1__ Token ;

/* Variables and functions */
 scalar_t__ TIDENT ; 
 TYPE_1__* cpp_token_one ; 
 TYPE_1__* cpp_token_zero ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  macros ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static Token *FUNC6() {
    Token *tok = FUNC3();
    if (FUNC2(tok, '(')) {
        tok = FUNC3();
        FUNC1(')');
    }
    if (tok->kind != TIDENT)
        FUNC0(tok, "identifier expected, but got %s", FUNC5(tok));
    return FUNC4(macros, tok->sval) ? cpp_token_one : cpp_token_zero;
}