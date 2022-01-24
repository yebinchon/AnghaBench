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
 int /*<<< orphan*/  hb_builtin_presets_json ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 void* hb_preset_template ; 
 void* hb_preset_version_major ; 
 void* hb_preset_version_micro ; 
 void* hb_preset_version_minor ; 
 int /*<<< orphan*/  hb_presets ; 
 void* hb_presets_builtin ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(void)
{
    hb_value_t * dict = FUNC6(hb_builtin_presets_json);
    hb_value_t * template = FUNC0(dict, "PresetTemplate");
    hb_preset_version_major = FUNC5(
                              FUNC0(template, "VersionMajor"));
    hb_preset_version_minor = FUNC5(
                              FUNC0(template, "VersionMinor"));
    hb_preset_version_micro = FUNC5(
                              FUNC0(template, "VersionMicro"));
    hb_preset_template = FUNC3(FUNC0(template, "Preset"));

    hb_presets_builtin = FUNC3(FUNC0(dict, "PresetBuiltin"));
    FUNC1(hb_presets_builtin);

    hb_presets = FUNC2();
    FUNC4(&dict);
}