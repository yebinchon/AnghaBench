
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int end_of_field; int line_len; int line_pos; char* line_buf; } ;
typedef TYPE_1__ OVERLAY_HELP_STATE_T ;


 int OVERLAY_HELP_INDENT ;
 int overlay_help_get_line (TYPE_1__*) ;

const char *overlay_help_field_data(OVERLAY_HELP_STATE_T *state)
{
    int line_len, pos;

    if (state->end_of_field)
        return ((void*)0);

    line_len = state->line_len;

    if ((state->line_pos < 0) ||
        (state->line_pos >= line_len))
    {
        line_len = overlay_help_get_line(state);


        if ((line_len < 0) || (state->line_buf[0] != ' '))
        {
            state->end_of_field = 1;
            return ((void*)0);
        }

        if (line_len == 0)
            return "";
    }


    pos = line_len;
    if (pos > OVERLAY_HELP_INDENT)
        pos = OVERLAY_HELP_INDENT;

    state->line_pos = -1;
    return &state->line_buf[pos];
}
