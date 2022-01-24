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
typedef  int /*<<< orphan*/  hb_preset_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  hb_preset_template ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC6(const hb_preset_index_t *path, const hb_value_t *dict)
{
    hb_value_t *folder = NULL;

    if (dict == NULL)
        return -1;

    folder = FUNC1(path);
    if (folder)
    {
        int index;
        hb_value_t *dup = FUNC4(dict);
        FUNC5(dup, hb_preset_template);
        index = FUNC3(folder);
        FUNC2(folder, dup);
        return index;
    }
    else
    {
        FUNC0("hb_preset_append: not found");
        return -1;
    }
    return 0;
}