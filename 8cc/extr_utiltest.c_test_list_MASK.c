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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,long) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 long FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10() {
    Vector *list = FUNC1();
    FUNC0(0, FUNC5(list));
    FUNC7(list, (void *)1);
    FUNC0(1, FUNC5(list));
    FUNC7(list, (void *)2);
    FUNC0(2, FUNC5(list));

    Vector *copy = FUNC2(list);
    FUNC0(2, FUNC5(copy));
    FUNC0(1, (long)FUNC3(copy, 0));
    FUNC0(2, (long)FUNC3(copy, 1));

    Vector *rev = FUNC8(list);
    FUNC0(2, FUNC5(rev));
    FUNC0(1, (long)FUNC6(rev));
    FUNC0(1, FUNC5(rev));
    FUNC0(2, (long)FUNC6(rev));
    FUNC0(0, FUNC5(rev));

    Vector *list3 = FUNC1();
    FUNC7(list3, (void *)1);
    FUNC0(1, (long)FUNC4(list3));
    FUNC0(1, (long)FUNC9(list3));
    FUNC7(list3, (void *)2);
    FUNC0(1, (long)FUNC4(list3));
    FUNC0(2, (long)FUNC9(list3));

    Vector *list4 = FUNC1();
    FUNC7(list4, (void *)1);
    FUNC7(list4, (void *)2);
    FUNC0(1, (long)FUNC3(list4, 0));
    FUNC0(2, (long)FUNC3(list4, 1));
}