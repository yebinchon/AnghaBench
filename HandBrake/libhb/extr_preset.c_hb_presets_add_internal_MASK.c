#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hb_value_t ;
struct TYPE_4__ {scalar_t__ depth; } ;
typedef  TYPE_1__ hb_preset_index_t ;

/* Variables and functions */
 scalar_t__ HB_VALUE_TYPE_ARRAY ; 
 scalar_t__ HB_VALUE_TYPE_DICT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * hb_presets ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(hb_value_t *preset)
{
    hb_preset_index_t *path;
    int                added = 0;

    if (preset == NULL)
        return -1;

    path = FUNC8(preset);
    if (path != NULL && path->depth != 0)
    {
        // There is a "Default" preset in the preset(s) being added.
        // Clear any existing default preset.
        FUNC1();
    }
    FUNC0(path);

    int index = FUNC4(hb_presets);
    if (FUNC7(preset) == HB_VALUE_TYPE_DICT)
    {
        // A standalone preset or folder of presets. Add to preset array.
        FUNC2(hb_presets, FUNC5(preset));
        added++;
    }
    else if (FUNC7(preset) == HB_VALUE_TYPE_ARRAY)
    {
        // An array of presets. Add each element.
        int count = FUNC4(preset);
        int ii;
        for (ii = 0; ii < count; ii++)
        {
            hb_value_t *value = FUNC3(preset, ii);
            FUNC2(hb_presets, FUNC5(value));
            added++;
        }
    }

    FUNC6(&preset);
    if (added == 0)
    {
        return -1;
    }

    return index;
}