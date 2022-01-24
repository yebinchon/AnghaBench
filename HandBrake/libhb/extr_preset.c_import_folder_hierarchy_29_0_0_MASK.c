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
 char* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 
 char* FUNC6 (char*,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(const char * name,
                                    hb_value_t * new_list, hb_value_t * folder)
{
    hb_value_t * list = FUNC2(folder, "ChildrenArray");
    int          ii, count;

    count = FUNC9(list);
    for (ii = 0; ii < count;)
    {
        hb_value_t * item = FUNC7(list, ii);

        if (FUNC3(item, "Folder"))
        {
            const char * folder_name;
            char       * new_name;
            int          pos = FUNC9(new_list);

            folder_name = FUNC4(item, "PresetName");
            new_name = FUNC6("%s - %s", name, folder_name);
            FUNC12(new_name, new_list, item);

            hb_value_t * children = FUNC2(item, "ChildrenArray");
            if (FUNC9(children) > 0)
            {
                // If the folder has any children, move it to the
                // top level folder list.
                char * unique_name = FUNC0(new_list, new_name);
                FUNC5(item, "PresetName", unique_name);
                FUNC11(item);
                FUNC10(list, ii);
                FUNC8(new_list, pos, item);
                FUNC1(unique_name);
            }
            else
            {
                FUNC10(list, ii);
            }
            FUNC1(new_name);
        }
        else
        {
            ii++;
        }
    }
}