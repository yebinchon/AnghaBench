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
typedef  int /*<<< orphan*/  Typespec ;
struct TYPE_2__ {int /*<<< orphan*/  pos; } ;
typedef  int /*<<< orphan*/  SrcPos ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  TOKEN_LBRACKET ; 
 int /*<<< orphan*/  TOKEN_MUL ; 
 int /*<<< orphan*/  TOKEN_RBRACKET ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  const_keyword ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 TYPE_1__ token ; 

Typespec *FUNC12(void) {
    Typespec *type = FUNC11();
    SrcPos pos = token.pos;
    while (FUNC3(TOKEN_LBRACKET) || FUNC3(TOKEN_MUL) || FUNC2(const_keyword)) {
        if (FUNC5(TOKEN_LBRACKET)) {
            Expr *size = NULL;
            if (!FUNC3(TOKEN_RBRACKET)) {
                size = FUNC10();
            }
            FUNC1(TOKEN_RBRACKET);
            type = FUNC6(pos, type, size);
        } else if (FUNC4(const_keyword)) {
            type = FUNC7(pos, type);
        } else {
            FUNC0(FUNC3(TOKEN_MUL));
            FUNC9();
            type = FUNC8(pos, type);
        }
    }
    return type;
}