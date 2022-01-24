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
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_7__ {scalar_t__ kind; } ;
typedef  TYPE_1__ Token ;

/* Variables and functions */
 scalar_t__ TIDENT ; 
 scalar_t__ TNEWLINE ; 
 TYPE_1__* cpp_token_zero ; 
 scalar_t__ FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 TYPE_1__* FUNC2 () ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static Vector *FUNC5() {
    Vector *r = FUNC1();
    for (;;) {
        Token *tok = FUNC3();
        if (tok->kind == TNEWLINE)
            return r;
        if (FUNC0(tok, "defined")) {
            FUNC4(r, FUNC2());
        } else if (tok->kind == TIDENT) {
            // C11 6.10.1.4 says that remaining identifiers
            // should be replaced with pp-number 0.
            FUNC4(r, cpp_token_zero);
        } else {
            FUNC4(r, tok);
        }
    }
}