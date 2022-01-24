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
struct TYPE_4__ {int /*<<< orphan*/  hideset; } ;
typedef  TYPE_1__ Token ;
typedef  int /*<<< orphan*/  Set ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static Vector *FUNC6(Vector *tokens, Set *hideset) {
    Vector *r = FUNC1();
    for (int i = 0; i < FUNC4(tokens); i++) {
        Token *t = FUNC0(FUNC3(tokens, i));
        t->hideset = FUNC2(t->hideset, hideset);
        FUNC5(r, t);
    }
    return r;
}