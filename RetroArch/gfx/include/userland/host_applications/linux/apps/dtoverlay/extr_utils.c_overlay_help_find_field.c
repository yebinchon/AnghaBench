
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rec_pos; char* line_buf; int line_pos; scalar_t__ end_of_field; int fp; } ;
typedef TYPE_1__ OVERLAY_HELP_STATE_T ;


 int OVERLAY_HELP_INDENT ;
 int SEEK_SET ;
 int fseek (int ,scalar_t__,int ) ;
 scalar_t__ memcmp (char*,char const*,int) ;
 int overlay_help_get_line (TYPE_1__*) ;
 int strlen (char const*) ;

int overlay_help_find_field(OVERLAY_HELP_STATE_T *state, const char *field)
{
    int field_len = strlen(field);
    int found = 0;

    if (state->rec_pos >= 0)
        fseek(state->fp, state->rec_pos, SEEK_SET);

    while (!found)
    {
        int line_len = overlay_help_get_line(state);
        if (line_len < 0)
            break;


        if ((line_len >= (field_len + 1)) &&
            (state->line_buf[field_len] == ':') &&
            (memcmp(state->line_buf, field, field_len) == 0))
        {


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
