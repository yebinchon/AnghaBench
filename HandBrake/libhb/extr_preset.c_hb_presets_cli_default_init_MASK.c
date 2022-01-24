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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hb_presets_cli_default ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(void)
{
    hb_value_t * dict = FUNC5(hb_builtin_presets_json);
    hb_presets_cli_default = FUNC3(FUNC0(dict, "PresetCLIDefault"));
    FUNC2(hb_presets_cli_default);

    int result = FUNC1(hb_presets_cli_default);
    FUNC4(&dict);
    return result;
}