#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int (* preset_do_f ) (int /*<<< orphan*/ *,TYPE_2__*) ;
struct TYPE_6__ {int* index; int depth; } ;
struct TYPE_7__ {TYPE_1__ path; } ;
typedef  TYPE_2__ preset_do_context_t ;
typedef  int /*<<< orphan*/  hb_value_t ;

/* Variables and functions */
 scalar_t__ HB_VALUE_TYPE_ARRAY ; 
 scalar_t__ HB_VALUE_TYPE_DICT ; 
 int PRESET_DO_DELETE ; 
 int PRESET_DO_DONE ; 
 int PRESET_DO_NEXT ; 
 int PRESET_DO_SKIP ; 
 int PRESET_DO_SUCCESS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(preset_do_f do_func, hb_value_t *preset,
                      preset_do_context_t *ctx)
{
    int result;
    hb_value_t *next;

    if (FUNC6(preset) == HB_VALUE_TYPE_ARRAY)
    {
        // An array of presets, clean each one
        int ii;

        for (ii = 0; ii < FUNC3(preset); )
        {
            ctx->path.index[ctx->path.depth-1] = ii;
            next = FUNC2(preset, ii);
            result = FUNC7(do_func, next, ctx);
            if (result == PRESET_DO_DELETE)
            {
                FUNC4(preset, ii);
                continue;
            }
            ii++;
            if (result == PRESET_DO_SKIP)
                return PRESET_DO_NEXT;
            if (result != PRESET_DO_NEXT)
                return result;
        }
        return PRESET_DO_NEXT;
    }
    else if (FUNC6(preset) == HB_VALUE_TYPE_DICT &&
             FUNC0(preset, "VersionMajor") != NULL)
    {
        // A packaged preset list
        next = FUNC0(preset, "PresetList");
        return FUNC7(do_func, next, ctx);
    }
    else if (FUNC6(preset) == HB_VALUE_TYPE_DICT &&
             FUNC5(FUNC0(preset, "Folder")))
    {
        // Perform do_func on the folder...
        result = do_func(preset, ctx);
        if (result != PRESET_DO_NEXT)
            return result;

        // Then perform preset action on the children of the folder
        ctx->path.depth++;
        next = FUNC0(preset, "ChildrenArray");
        result = FUNC7(do_func, next, ctx);
        if (result == PRESET_DO_SUCCESS)
            return result;
        ctx->path.depth--;
        return result;
    }
    else if (FUNC6(preset) == HB_VALUE_TYPE_DICT &&
             FUNC0(preset, "PresetName") != NULL)
    {
        // An individual, non-folder, preset
        return do_func(preset, ctx);
    }
    else
    {
        FUNC1("Error: invalid preset format in presets_do()");
        return PRESET_DO_DELETE;
    }
    return PRESET_DO_DONE;
}