#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int depth; } ;
struct TYPE_5__ {TYPE_1__ path; } ;
typedef  TYPE_2__ preset_do_context_t ;
typedef  int /*<<< orphan*/  hb_value_t ;

/* Variables and functions */
 int /*<<< orphan*/  do_make_custom ; 
 int /*<<< orphan*/ * FUNC0 (char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 

int FUNC5(const char *filename)
{
    hb_value_t *preset = FUNC3(filename);
    if (preset == NULL)
        preset = FUNC0(filename);
    if (preset == NULL)
        return -1;

    preset_do_context_t ctx;

    ctx.path.depth = 1;
    FUNC4(do_make_custom, preset, &ctx);

    int result = FUNC1(preset);
    FUNC2(&preset);

    return result;
}