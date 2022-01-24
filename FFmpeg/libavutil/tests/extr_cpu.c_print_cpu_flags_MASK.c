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
struct TYPE_2__ {int flag; char* name; } ;

/* Variables and functions */
 TYPE_1__* cpu_flag_tab ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(int cpu_flags, const char *type)
{
    int i;

    FUNC0("cpu_flags(%s) = 0x%08X\n", type, cpu_flags);
    FUNC0("cpu_flags_str(%s) =", type);
    for (i = 0; cpu_flag_tab[i].flag; i++)
        if (cpu_flags & cpu_flag_tab[i].flag)
            FUNC0(" %s", cpu_flag_tab[i].name);
    FUNC0("\n");
}