#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vector ;
typedef  int /*<<< orphan*/  Type ;
typedef  int /*<<< orphan*/  Token ;
struct TYPE_6__ {int /*<<< orphan*/  ty; } ;
typedef  TYPE_1__ Node ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 TYPE_1__* FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void** FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static Node *FUNC10() {
    FUNC1('(');
    Token *tok = FUNC3();
    Node *contexpr = FUNC4();
    FUNC1(',');
    Node *defaultexpr = NULL;
    Vector *list = FUNC5(&defaultexpr);
    for (int i = 0; i < FUNC9(list); i++) {
        void **pair = FUNC8(list, i);
        Type *ty = pair[0];
        Node *expr = pair[1];
        if (FUNC7(contexpr->ty, ty))
            return expr;
    }
   if (!defaultexpr)
       FUNC0(tok, "no matching generic selection for %s: %s", FUNC2(contexpr), FUNC6(contexpr->ty));
   return defaultexpr;
}