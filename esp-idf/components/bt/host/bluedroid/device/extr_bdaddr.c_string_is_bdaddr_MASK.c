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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 size_t FUNC2 (char const*) ; 

bool FUNC3(const char *string)
{
    FUNC0(string != NULL);

    size_t len = FUNC2(string);
    if (len != 17) {
        return false;
    }

    for (size_t i = 0; i < len; ++i) {
        // Every 3rd char must be ':'.
        if (((i + 1) % 3) == 0 && string[i] != ':') {
            return false;
        }

        // All other chars must be a hex digit.
        if (((i + 1) % 3) != 0 && !FUNC1(string[i])) {
            return false;
        }
    }
    return true;
}