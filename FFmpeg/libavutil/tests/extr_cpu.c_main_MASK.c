#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  threads ;
struct TYPE_2__ {char* name; scalar_t__ flag; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 void* FUNC2 () ; 
 scalar_t__ FUNC3 (unsigned int*,char*) ; 
 int FUNC4 (char*,char*,int) ; 
 TYPE_1__* cpu_flag_tab ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC6 (int,char**,char*) ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC9(int argc, char **argv)
{
    int cpu_flags_raw = FUNC2();
    int cpu_flags_eff;
    int cpu_count = FUNC0();
    char threads[5] = "auto";
    int i;

    for(i = 0; cpu_flag_tab[i].flag; i++) {
        unsigned tmp = 0;
        if (FUNC3(&tmp, cpu_flag_tab[i].name) < 0) {
            FUNC5(stderr, "Table missing %s\n", cpu_flag_tab[i].name);
            return 4;
        }
    }

    if (cpu_flags_raw < 0)
        return 1;

    for (;;) {
        int c = FUNC6(argc, argv, "c:t:");
        if (c == -1)
            break;
        switch (c) {
        case 'c':
        {
            unsigned flags = FUNC2();
            if (FUNC3(&flags, optarg) < 0)
                return 2;

            FUNC1(flags);
            break;
        }
        case 't':
        {
            int len = FUNC4(threads, optarg, sizeof(threads));
            if (len >= sizeof(threads)) {
                FUNC5(stderr, "Invalid thread count '%s'\n", optarg);
                return 2;
            }
        }
        }
    }

    cpu_flags_eff = FUNC2();

    if (cpu_flags_eff < 0)
        return 3;

    FUNC7(cpu_flags_raw, "raw");
    FUNC7(cpu_flags_eff, "effective");
    FUNC8("threads = %s (cpu_count = %d)\n", threads, cpu_count);

    return 0;
}