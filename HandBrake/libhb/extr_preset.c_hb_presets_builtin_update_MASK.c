#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int depth; } ;
struct TYPE_8__ {TYPE_1__ path; } ;
typedef  TYPE_2__ preset_do_context_t ;
typedef  int /*<<< orphan*/  hb_value_t ;
struct TYPE_9__ {scalar_t__ depth; } ;
typedef  TYPE_3__ hb_preset_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  do_clear_default ; 
 int /*<<< orphan*/  do_delete_builtin ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/ * hb_presets ; 
 int /*<<< orphan*/  hb_presets_builtin ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 

void FUNC9(void)
{
    preset_do_context_t ctx;
    hb_preset_index_t *path;
    hb_value_t *builtin;
    int ii;

    ctx.path.depth = 1;
    FUNC8(do_delete_builtin, hb_presets, &ctx);

    builtin = FUNC4(hb_presets_builtin);
    path = FUNC7(hb_presets);
    if (path != NULL && path->depth != 0)
    {
        // The "Default" preset is an existing custom preset.
        // Clear the default preset in builtins
        ctx.path.depth = 1;
        FUNC8(do_clear_default, builtin, &ctx);
    }
    FUNC0(path);

    for (ii = FUNC3(builtin) - 1; ii >= 0; ii--)
    {
        hb_value_t *dict;
        dict = FUNC1(builtin, ii);
        FUNC6(dict);
        FUNC2(hb_presets, 0, dict);
    }
    FUNC5(&builtin);
}