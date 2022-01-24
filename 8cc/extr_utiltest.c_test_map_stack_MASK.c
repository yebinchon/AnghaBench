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
typedef  int /*<<< orphan*/  Map ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,void*) ; 

__attribute__((used)) static void FUNC5() {
    Map *m1 = FUNC1();
    FUNC4(m1, "x", (void *)1);
    FUNC4(m1, "y", (void *)2);
    FUNC0(1, (int)(intptr_t)FUNC3(m1, "x"));

    Map *m2 = FUNC2(m1);
    FUNC0(1, (int)(intptr_t)FUNC3(m2, "x"));
    FUNC4(m2, "x", (void *)3);
    FUNC0(3, (int)(intptr_t)FUNC3(m2, "x"));
    FUNC0(1, (int)(intptr_t)FUNC3(m1, "x"));
}