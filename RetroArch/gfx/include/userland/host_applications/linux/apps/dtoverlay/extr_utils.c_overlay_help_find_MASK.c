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
struct TYPE_5__ {int line_pos; int rec_pos; int /*<<< orphan*/  fp; scalar_t__ blank_count; } ;
typedef  TYPE_1__ OVERLAY_HELP_STATE_T ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC4 (char const*,char const*) ; 

int FUNC5(OVERLAY_HELP_STATE_T *state, const char *name)
{
    state->line_pos = -1;
    state->rec_pos = -1;
    state->blank_count = 0;

    FUNC0(state->fp, 0, SEEK_SET);

    while (FUNC3(state, "Name"))
    {
        const char *overlay = FUNC2(state);
        if (overlay && (FUNC4(overlay, name) == 0))
        {
            state->rec_pos = (long)FUNC1(state->fp);
            return 1;
        }
    }

    return 0;
}