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
typedef  char gchar ;

/* Variables and functions */
 size_t fARCH_aarch64 ; 
 size_t fARCH_arm ; 
 size_t fARCH_i386 ; 
 size_t fARCH_x86_64 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbose ; 

void FUNC4(gchar *archname, const gchar* sourcename, bool* archs) {
    if (archname) {
        archname = FUNC2(archname);
        if (archname) {
            FUNC3(archname, "-", "_");
            FUNC3(archname, " ", "_");
            if (FUNC1("i386", archname, 20) == 0
                    || FUNC1("i486", archname, 20) == 0
                    || FUNC1("i586", archname, 20) == 0
                    || FUNC1("i686", archname, 20) == 0
                    || FUNC1("intel_80386", archname, 20) == 0
                    || FUNC1("intel_80486", archname, 20) == 0
                    || FUNC1("intel_80586", archname, 20) == 0
                    || FUNC1("intel_80686", archname, 20) == 0
                    ) {
                archs[fARCH_i386] = 1;
                if (verbose)
                    FUNC0(stderr, "%s used for determining architecture i386\n", sourcename);
            } else if (FUNC1("x86_64", archname, 20) == 0) {
                archs[fARCH_x86_64] = 1;
                if (verbose)
                    FUNC0(stderr, "%s used for determining architecture x86_64\n", sourcename);
            } else if (FUNC1("arm", archname, 20) == 0) {
                archs[fARCH_arm] = 1;
                if (verbose)
                    FUNC0(stderr, "%s used for determining architecture ARM\n", sourcename);
            } else if (FUNC1("arm_aarch64", archname, 20) == 0) {
                archs[fARCH_aarch64] = 1;
                if (verbose)
                    FUNC0(stderr, "%s used for determining architecture ARM aarch64\n", sourcename);
            }
        }
    }
}