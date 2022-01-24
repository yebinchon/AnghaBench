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
 int EOF ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (char) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static bool FUNC6() {
    int c = FUNC2();
    if (c == EOF)
        return false;
    if (FUNC0(c))
        return true;
    if (c == '/') {
        if (FUNC1('*')) {
            FUNC3();
            return true;
        }
        if (FUNC1('/')) {
            FUNC4();
            return true;
        }
    }
    FUNC5(c);
    return false;
}