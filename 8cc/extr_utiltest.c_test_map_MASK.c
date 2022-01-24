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
 int /*<<< orphan*/  FUNC0 (int,intptr_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 char* FUNC2 (char*,int) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC7() {
    Map *m = FUNC3();
    FUNC1(FUNC4(m, "abc"));

    // Insert 10000 values
    for (int i = 0; i < 10000; i++) {
        char *k = FUNC2("%d", i);
        FUNC5(m, k, (void *)(intptr_t)i);
        FUNC0(i, (int)(intptr_t)FUNC4(m, k));
    }

    // Insert again
    for (int i = 0; i < 1000; i++) {
        char *k = FUNC2("%d", i);
        FUNC5(m, k, (void *)(intptr_t)i);
        FUNC0(i, (int)(intptr_t)FUNC4(m, k));
    }

    // Remove them
    for (int i = 0; i < 10000; i++) {
        char *k = FUNC2("%d", i);
        FUNC0(i, (intptr_t)FUNC4(m, k));
        FUNC6(m, k);
        FUNC1(FUNC4(m, k));
    }
}