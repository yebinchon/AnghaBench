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
struct TYPE_4__ {scalar_t__ rec_pos; char* line_buf; int line_pos; scalar_t__ end_of_field; int /*<<< orphan*/  fp; } ;
typedef  TYPE_1__ OVERLAY_HELP_STATE_T ;

/* Variables and functions */
 int OVERLAY_HELP_INDENT ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,char const*,int) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (char const*) ; 

int FUNC4(OVERLAY_HELP_STATE_T *state, const char *field)
{
    int field_len = FUNC3(field);
    int found = 0;

    if (state->rec_pos >= 0)
        FUNC0(state->fp, state->rec_pos, SEEK_SET);

    while (!found)
    {
        int line_len = FUNC2(state);
        if (line_len < 0)
            break;

        /* Check for the "<field>:" prefix */
        if ((line_len >= (field_len + 1)) &&
            (state->line_buf[field_len] == ':') &&
            (FUNC1(state->line_buf, field, field_len) == 0))
        {
            /* Found it
               If this initial line has no content then skip it */
            if (line_len > OVERLAY_HELP_INDENT)
                state->line_pos = OVERLAY_HELP_INDENT;
            else
                state->line_pos = -1;
            state->end_of_field = 0;
            found = 1;
        }
        else
        {
            state->line_pos = -1;
        }
    }

    return found;
}