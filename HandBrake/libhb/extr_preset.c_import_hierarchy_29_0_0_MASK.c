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
 int /*<<< orphan*/  HB_PRESET_TYPE_CUSTOM ; 
 scalar_t__ HB_PRESET_TYPE_OFFICIAL ; 
 scalar_t__ HB_VALUE_TYPE_DICT ; 
 char* FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (char const*,char*) ; 

__attribute__((used)) static hb_value_t * FUNC21(hb_value_t *presets)
{
    hb_value_t * list = presets;
    hb_value_t * my_presets = NULL;
    hb_value_t * my_presets_list;
    hb_value_t * new_list;
    int          ii, count;

    if (FUNC18(presets) == HB_VALUE_TYPE_DICT &&
        FUNC2(presets, "VersionMajor") != NULL)
    {
        // A packaged preset list
        list = FUNC2(presets, "PresetList");
    }

    // Copy official presets to new list
    new_list = FUNC13();
    count = FUNC15(list);
    for (ii = 0; ii < count; ii++)
    {
        hb_value_t * item = FUNC12(list, ii);
        if (FUNC4(item, "Type") != HB_PRESET_TYPE_OFFICIAL)
        {
            continue;
        }
        FUNC11(new_list, FUNC17(item));
    }

    // First process any custom folder named "My Presets".
    // Any existing "My Presets" folder is sanitized for subfolders.
    // If "My Presets" doesn't exist, one is created.
    count = FUNC15(list);
    for (ii = 0; ii < count; ii++)
    {
        hb_value_t * item = FUNC12(list, ii);

        if (FUNC4(item, "Type") == HB_PRESET_TYPE_OFFICIAL)
        {
            // Skip official presets.  The don't need to be restructured.
            continue;
        }
        if (FUNC3(item, "Folder"))
        {
            int          pos = FUNC15(new_list);
            const char * name = FUNC5(item, "PresetName");
            if (FUNC20(name, "My Presets"))
            {
                continue;
            }
            FUNC19(name, new_list, item);

            my_presets = FUNC17(item);
            FUNC14(new_list, pos, my_presets);
            FUNC16(list, ii);
            break;
        }
    }
    if (my_presets == NULL)
    {
        my_presets = FUNC6();
        FUNC10(my_presets, "PresetName", "My Presets");
        FUNC7(my_presets, "ChildrenArray", FUNC13());
        FUNC9(my_presets, "Type", HB_PRESET_TYPE_CUSTOM);
        FUNC8(my_presets, "Folder", 1);
        FUNC11(new_list, my_presets);
    }
    my_presets_list = FUNC2(my_presets, "ChildrenArray");

    // Sanitize all other custom folders
    count = FUNC15(list);
    for (ii = 0; ii < count; ii++)
    {
        hb_value_t * item = FUNC12(list, ii);

        if (FUNC4(item, "Type") == HB_PRESET_TYPE_OFFICIAL)
        {
            // Skip official presets.  The don't need to be restructured.
            continue;
        }
        if (FUNC3(item, "Folder"))
        {
            int          pos  = FUNC15(new_list);
            const char * name = FUNC5(item, "PresetName");
            FUNC19(name, new_list, item);

            hb_value_t * children = FUNC2(item, "ChildrenArray");
            if (FUNC15(children) > 0)
            {
                // If the folder has any children, move it to the
                // top level folder list.
                char * unique_name = FUNC0(new_list, name);
                FUNC10(item, "PresetName", unique_name);
                FUNC14(new_list, pos, FUNC17(item));
                FUNC1(unique_name);
            }
        }
        else
        {
            FUNC11(my_presets_list, FUNC17(item));
        }
    }

    if (FUNC18(presets) == HB_VALUE_TYPE_DICT &&
        FUNC2(presets, "VersionMajor") != NULL)
    {
        // A packaged preset list
        FUNC7(presets, "PresetList", new_list);
    }
    else
    {
        presets = new_list;
    }
    return FUNC17(presets);
}