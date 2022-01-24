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
typedef  int /*<<< orphan*/  hb_value_array_t ;
typedef  int /*<<< orphan*/  hb_dict_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 char** FUNC9 (char const*,int) ; 

__attribute__((used)) static void FUNC10(hb_value_array_t *presets, int indent, int descriptions)
{
    if (presets == NULL)
        presets = FUNC3();

    int count = FUNC6(presets);
    int ii;
    for (ii = 0; ii < count; ii++)
    {
        const char *name;
        hb_dict_t *preset_dict = FUNC5(presets, ii);
        name = FUNC8(FUNC2(preset_dict, "PresetName"));
        FUNC0(stderr, "    ", indent);
        if (FUNC7(FUNC2(preset_dict, "Folder")))
        {
            indent++;
            FUNC1(stderr, "%s/\n", name);
            hb_value_array_t *children;
            children = FUNC2(preset_dict, "ChildrenArray");
            if (children == NULL)
                continue;
            FUNC10(children, indent, descriptions);
            indent--;
        }
        else
        {
            FUNC1(stderr, "%s\n", name);
            if (descriptions)
            {
                const char *desc;
                desc = FUNC8(FUNC2(preset_dict,
                                                       "PresetDescription"));
                if (desc != NULL && desc[0] != 0)
                {
                    int ii;
                    char **split = FUNC9(desc, 60);
                    for (ii = 0; split[ii] != NULL; ii++)
                    {
                        FUNC0(stderr, "    ", indent+1);
                        FUNC1(stderr, "%s\n", split[ii]);
                    }
                    FUNC4(split);
                }
            }
        }
    }
}