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
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void FUNC7(void) {
    const char *ionhome_var = FUNC3("IONHOME");
    if (!ionhome_var) {
        FUNC6("error: Set the environment variable IONHOME to the Ion home directory (where system_packages is located)\n");
        FUNC2(1);
    }
    char path[MAX_PATH];
    FUNC4(path, ionhome_var);
    FUNC5(path, "system_packages");
    FUNC0(path);
    FUNC0(".");
    const char *ionpath_var = FUNC3("IONPATH");
    if (ionpath_var) {
        const char *start = ionpath_var;
        for (const char *ptr = ionpath_var; *ptr; ptr++) {
            if (*ptr == ';') {
                FUNC1(start, ptr);
                start = ptr + 1;
            }
        }
        if (*start) {
            FUNC0(start);
        }
    }
}