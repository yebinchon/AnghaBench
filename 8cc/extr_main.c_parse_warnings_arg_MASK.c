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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int warning_is_error ; 

__attribute__((used)) static void FUNC2(char *s) {
    if (!FUNC1(s, "error"))
        warning_is_error = true;
    else if (FUNC1(s, "all"))
        FUNC0("unknown -W option: %s", s);
}