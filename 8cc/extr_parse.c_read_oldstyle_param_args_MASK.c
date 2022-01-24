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
typedef  int /*<<< orphan*/  Vector ;
typedef  int /*<<< orphan*/  Map ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * localenv ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Vector *FUNC7() {
    Map *orig = localenv;
    localenv = NULL;
    Vector *r = FUNC3();
    for (;;) {
        if (FUNC1(FUNC4(), '{'))
            break;
        if (!FUNC2(FUNC4()))
            FUNC0(FUNC4(), "K&R-style declarator expected, but got %s", FUNC6(FUNC4()));
        FUNC5(r, false);
    }
    localenv = orig;
    return r;
}