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
 int FUNC0 (char const*) ; 
 int FUNC1 (char const*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int target_arch ; 
 int target_os ; 

void FUNC4(void) {
    const char *ionos_var = FUNC2("IONOS");
    if (ionos_var) {
        int os = FUNC1(ionos_var);
        if (os == -1) {
            FUNC3("Unknown target operating system in IONOS environment variable: %s\n", ionos_var);
        } else {
            target_os = os;
        }
    }
    const char *ionarch_var = FUNC2("IONARCH");
    if (ionarch_var) {
        int arch = FUNC0(ionarch_var);
        if (arch == -1) {
            FUNC3("Unknown target architecture in IONARCH environment variable: %s\n", ionarch_var);
        } else {
            target_arch = arch;
        }
    }
}