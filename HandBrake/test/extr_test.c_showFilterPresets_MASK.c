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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ * const,char*,...) ; 
 char** FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static void FUNC4(FILE* const out, int filter_id)
{
    char ** names = FUNC1(filter_id);
    int     ii, count = 0;

    // Count number of entries we want to display
    for (ii = 0; names[ii] != NULL; ii++)
    {
        if (!FUNC3(names[ii], "custom") || // skip custom
            !FUNC3(names[ii], "off")    || // skip off
            !FUNC3(names[ii], "default"))  // skip default
            continue;
        count++;
    }

    // If there are no entries, display nothing.
    if (count == 0)
    {
        return;
    }
    FUNC0(out, "                           Presets:\n");
    for (ii = 0; names[ii] != NULL; ii++)
    {
        if (!FUNC3(names[ii], "custom") || // skip custom
            !FUNC3(names[ii], "off")    || // skip off
            !FUNC3(names[ii], "default"))  // skip default
            continue;
        FUNC0(out, "                               %s\n", names[ii]);
    }

    FUNC2(names);
}