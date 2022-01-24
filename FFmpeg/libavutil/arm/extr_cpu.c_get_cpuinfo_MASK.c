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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int HWCAP_EDSP ; 
 int HWCAP_NEON ; 
 int HWCAP_THUMBEE ; 
 int HWCAP_TLS ; 
 int HWCAP_VFP ; 
 int HWCAP_VFPv3 ; 
 scalar_t__ FUNC0 (char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

__attribute__((used)) static int FUNC5(uint32_t *hwcap)
{
    FILE *f = FUNC3("/proc/cpuinfo", "r");
    char buf[200];

    if (!f)
        return -1;

    *hwcap = 0;
    while (FUNC2(buf, sizeof(buf), f)) {
        if (FUNC0(buf, "Features", NULL)) {
            if (FUNC4(buf, " edsp "))
                *hwcap |= HWCAP_EDSP;
            if (FUNC4(buf, " tls "))
                *hwcap |= HWCAP_TLS;
            if (FUNC4(buf, " thumbee "))
                *hwcap |= HWCAP_THUMBEE;
            if (FUNC4(buf, " vfp "))
                *hwcap |= HWCAP_VFP;
            if (FUNC4(buf, " vfpv3 "))
                *hwcap |= HWCAP_VFPv3;
            if (FUNC4(buf, " neon ") || FUNC4(buf, " asimd "))
                *hwcap |= HWCAP_NEON;
            if (FUNC4(buf, " fp ")) // Listed on 64 bit ARMv8 kernels
                *hwcap |= HWCAP_VFP | HWCAP_VFPv3;
            break;
        }
    }
    FUNC1(f);
    return 0;
}