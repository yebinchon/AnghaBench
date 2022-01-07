
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int line_pos; int rec_pos; int fp; scalar_t__ blank_count; } ;
typedef TYPE_1__ OVERLAY_HELP_STATE_T ;


 int SEEK_SET ;
 int fseek (int ,int ,int ) ;
 scalar_t__ ftell (int ) ;
 char* overlay_help_field_data (TYPE_1__*) ;
 scalar_t__ overlay_help_find_field (TYPE_1__*,char*) ;
 scalar_t__ strcmp (char const*,char const*) ;

int overlay_help_find(OVERLAY_HELP_STATE_T *state, const char *name)
{
    state->line_pos = -1;
    state->rec_pos = -1;
    state->blank_count = 0;

    fseek(state->fp, 0, SEEK_SET);

    while (overlay_help_find_field(state, "Name"))
    {
        const char *overlay = overlay_help_field_data(state);
        if (overlay && (strcmp(overlay, name) == 0))
        {
            state->rec_pos = (long)ftell(state->fp);
            return 1;
        }
    }

    return 0;
}
