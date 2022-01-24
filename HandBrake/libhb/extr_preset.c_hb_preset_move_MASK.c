#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hb_value_t ;
struct TYPE_5__ {int depth; int* index; } ;
typedef  TYPE_1__ hb_preset_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(const hb_preset_index_t *src_path,
                   const hb_preset_index_t *dst_path)
{
    hb_value_t *src_folder = NULL;
    hb_value_t *dst_folder = NULL;

    hb_preset_index_t src_folder_path = *src_path;
    hb_preset_index_t dst_folder_path = *dst_path;
    src_folder_path.depth--;
    dst_folder_path.depth--;
    src_folder = FUNC1(&src_folder_path);
    dst_folder = FUNC1(&dst_folder_path);
    if (src_folder == NULL || dst_folder == NULL)
    {
        FUNC0("hb_preset_move: not found");
        return -1;
    }

    hb_value_t *dict;
    int         src_index, dst_index;

    src_index = src_path->index[src_path->depth-1];
    dst_index = dst_path->index[dst_path->depth-1];
    dict      = FUNC3(src_folder, src_index);
    FUNC7(dict);
    FUNC6(src_folder, src_index);

    // Be careful about indexes in the case that they are in the same folder
    if (src_folder == dst_folder && src_index < dst_index)
        dst_index--;
    if (FUNC5(dst_folder) <= dst_index)
        FUNC2(dst_folder, dict);
    else
        FUNC4(dst_folder, dst_index, dict);

    return 0;
}