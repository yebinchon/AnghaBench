#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ TokenKind ;
struct TYPE_2__ {scalar_t__ kind; int /*<<< orphan*/  pos; } ;
typedef  int /*<<< orphan*/  SrcPos ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 scalar_t__ TOKEN_DEC ; 
 scalar_t__ TOKEN_INC ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 TYPE_1__ token ; 

Expr *FUNC5(void) {
    if (FUNC0()) {
        SrcPos pos = token.pos;
        TokenKind op = token.kind;
        FUNC3();
        if (op == TOKEN_INC || op == TOKEN_DEC) {
            return FUNC1(pos, op, false, FUNC5());
        } else {
            return FUNC2(pos, op, FUNC5());
        }
    } else {
        return FUNC4();
    }
}