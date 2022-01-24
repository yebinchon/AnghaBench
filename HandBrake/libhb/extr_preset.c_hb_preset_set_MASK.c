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
struct TYPE_4__ {int depth; int /*<<< orphan*/ * index; } ;
typedef  TYPE_1__ hb_preset_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  hb_preset_template ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC6(const hb_preset_index_t *path, const hb_value_t *dict)
{
    hb_value_t *folder = NULL;

    if (dict == NULL || path == NULL || path->depth <= 0)
        return -1;

    hb_preset_index_t folder_path = *path;
    folder_path.depth--;
    folder = FUNC1(&folder_path);
    if (folder)
    {
        if (FUNC2(folder) <= path->index[path->depth-1])
        {
            FUNC0("hb_preset_replace: not found");
            return -1;
        }
        else
        {
            hb_value_t *dup = FUNC4(dict);
            FUNC5(dup, hb_preset_template);
            FUNC3(folder, path->index[path->depth-1], dup);
        }
    }
    else
    {
        FUNC0("hb_preset_replace: not found");
        return -1;
    }
    return 0;
}