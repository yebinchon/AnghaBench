#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nb_cpus ;
typedef  int /*<<< orphan*/  cpuset ;
typedef  int /*<<< orphan*/  cpu_set_t ;
struct TYPE_3__ {int dwNumberOfProcessors; } ;
typedef  TYPE_1__ SYSTEM_INFO ;
typedef  int /*<<< orphan*/  DWORD_PTR ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int CTL_HW ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int HW_NCPU ; 
 int /*<<< orphan*/  _SC_NPROCESSORS_ONLN ; 
 int /*<<< orphan*/  _SC_NPROC_ONLN ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int*,int,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC10(void)
{
    static volatile int printed;

    int nb_cpus = 1;
#if HAVE_WINRT
    SYSTEM_INFO sysinfo;
#endif
#if HAVE_SCHED_GETAFFINITY && defined(CPU_COUNT)
    cpu_set_t cpuset;

    CPU_ZERO(&cpuset);

    if (!sched_getaffinity(0, sizeof(cpuset), &cpuset))
        nb_cpus = CPU_COUNT(&cpuset);
#elif HAVE_GETPROCESSAFFINITYMASK
    DWORD_PTR proc_aff, sys_aff;
    if (GetProcessAffinityMask(GetCurrentProcess(), &proc_aff, &sys_aff))
        nb_cpus = av_popcount64(proc_aff);
#elif HAVE_SYSCTL && defined(HW_NCPU)
    int mib[2] = { CTL_HW, HW_NCPU };
    size_t len = sizeof(nb_cpus);

    if (sysctl(mib, 2, &nb_cpus, &len, NULL, 0) == -1)
        nb_cpus = 0;
#elif HAVE_SYSCONF && defined(_SC_NPROC_ONLN)
    nb_cpus = sysconf(_SC_NPROC_ONLN);
#elif HAVE_SYSCONF && defined(_SC_NPROCESSORS_ONLN)
    nb_cpus = sysconf(_SC_NPROCESSORS_ONLN);
#elif HAVE_WINRT
    GetNativeSystemInfo(&sysinfo);
    nb_cpus = sysinfo.dwNumberOfProcessors;
#endif

    if (!printed) {
        FUNC5(NULL, AV_LOG_DEBUG, "detected %d logical cores\n", nb_cpus);
        printed = 1;
    }

    return nb_cpus;
}