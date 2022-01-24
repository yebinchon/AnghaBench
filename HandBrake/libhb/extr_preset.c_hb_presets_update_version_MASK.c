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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hb_preset_version_major ; 
 int /*<<< orphan*/  hb_preset_version_micro ; 
 int /*<<< orphan*/  hb_preset_version_minor ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 

hb_value_t * FUNC6(hb_value_t *presets)
{
    if (FUNC4(presets) == HB_VALUE_TYPE_DICT)
    {
        // Is this a single preset or a packaged collection of presets?
        hb_value_t *val = FUNC0(presets, "PresetName");
        if (val == NULL)
        {
            val = FUNC0(presets, "VersionMajor");
            if (val != NULL)
            {
                FUNC1(presets, "VersionMajor",
                            FUNC3(hb_preset_version_major));
                FUNC1(presets, "VersionMinor",
                            FUNC3(hb_preset_version_minor));
                FUNC1(presets, "VersionMicro",
                            FUNC3(hb_preset_version_micro));
                FUNC2(presets);
                return presets;
            }
            // Unrecognizable preset file format
            return NULL;
        }
    }
    return FUNC5(presets);
}