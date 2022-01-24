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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 

__attribute__((used)) static void FUNC6() {
    FUNC4(FUNC2("abc"));
    FUNC0('a', FUNC3());
    FUNC0('b', FUNC3());
    FUNC5('b');
    FUNC5('a');
    FUNC0('a', FUNC3());
    FUNC0('b', FUNC3());
    FUNC0('c', FUNC3());
    FUNC0('\n', FUNC3());
    FUNC5('\n');
    FUNC0('\n', FUNC3());
    FUNC1(FUNC3() < 0);
}