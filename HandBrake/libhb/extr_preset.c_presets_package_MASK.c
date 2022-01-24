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
typedef  int /*<<< orphan*/  hb_value_array_t ;
typedef  int /*<<< orphan*/  hb_dict_t ;

/* Variables and functions */
 scalar_t__ HB_VALUE_TYPE_DICT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hb_preset_template ; 
 int /*<<< orphan*/  hb_preset_version_major ; 
 int /*<<< orphan*/  hb_preset_version_micro ; 
 int /*<<< orphan*/  hb_preset_version_minor ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static hb_value_t * FUNC9(const hb_value_t *presets)
{
    hb_dict_t *packaged_presets;
    if (FUNC7(presets) != HB_VALUE_TYPE_DICT ||
        FUNC0(presets, "VersionMajor") == NULL)
    {
        // Preset is not packaged
        packaged_presets = FUNC1();
        FUNC2(packaged_presets, "VersionMajor",
                    FUNC6(hb_preset_version_major));
        FUNC2(packaged_presets, "VersionMinor",
                    FUNC6(hb_preset_version_minor));
        FUNC2(packaged_presets, "VersionMicro",
                    FUNC6(hb_preset_version_micro));

        // TODO: What else do we want in the preset containers header?
        hb_dict_t *tmp = FUNC5(presets);
        if (FUNC7(presets) == HB_VALUE_TYPE_DICT)
        {
            hb_value_array_t *array = FUNC4();
            FUNC3(array, tmp);
            tmp = array;
        }
        FUNC8(tmp, hb_preset_template);
        FUNC2(packaged_presets, "PresetList", tmp);
    }
    else
    {
        // Preset is already packaged
        hb_dict_t *tmp = FUNC5(presets);
        FUNC8(tmp, hb_preset_template);
        packaged_presets = tmp;
    }
    return packaged_presets;
}