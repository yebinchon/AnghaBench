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
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  Map ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * localenv ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 scalar_t__ FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static Node *FUNC5() {
    Map *orig = localenv;
    localenv = FUNC1(localenv);
    Vector *list = FUNC2();
    for (;;) {
        if (FUNC3('}'))
            break;
        FUNC4(list);
    }
    localenv = orig;
    return FUNC0(list);
}