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
typedef  int /*<<< orphan*/  Dict ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,long) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,void*) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 long FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7() {
    Dict *dict = FUNC5();
    FUNC1(FUNC2(dict, "abc"));
    FUNC4(dict, "abc", (void *)50);
    FUNC4(dict, "xyz", (void *)70);
    FUNC0(50, (long)FUNC2(dict, "abc"));
    FUNC0(70, (long)FUNC2(dict, "xyz"));
    FUNC0(2, FUNC6(FUNC3(dict)));
}