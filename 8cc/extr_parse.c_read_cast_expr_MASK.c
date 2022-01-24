#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Type ;
typedef  int /*<<< orphan*/  Token ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/  OP_CAST ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static Node *FUNC11() {
    Token *tok = FUNC2();
    if (FUNC3(tok, '(') && FUNC4(FUNC5())) {
        Type *ty = FUNC6();
        FUNC1(')');
        if (FUNC3(FUNC5(), '{')) {
            Node *node = FUNC7(ty);
            return FUNC8(node);
        }
        return FUNC0(OP_CAST, ty, FUNC11());
    }
    FUNC10(tok);
    return FUNC9();
}