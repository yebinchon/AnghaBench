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
typedef  int /*<<< orphan*/  hb_value_t ;

/* Variables and functions */
 scalar_t__ HB_VALUE_TYPE_DICT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(hb_value_t *preset, int *major, int *minor, int *micro)
{
    *major = 0; *minor = 0; *micro = 0;
    if (FUNC2(preset) == HB_VALUE_TYPE_DICT)
    {
        // Is this a single preset or a packaged collection of presets?
        hb_value_t *val = FUNC0(preset, "PresetName");
        if (val == NULL)
        {
            val = FUNC0(preset, "VersionMajor");
            if (val != NULL)
            {
                *major = FUNC1(FUNC0(preset, "VersionMajor"));
                *minor = FUNC1(FUNC0(preset, "VersionMinor"));
                *micro = FUNC1(FUNC0(preset, "VersionMicro"));
                return 0;
            }
        }
    }
    return -1;
}