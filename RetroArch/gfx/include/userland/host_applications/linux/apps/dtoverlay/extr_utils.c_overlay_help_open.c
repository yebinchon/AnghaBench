
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int line_pos; int rec_pos; int * fp; } ;
typedef TYPE_1__ OVERLAY_HELP_STATE_T ;
typedef int FILE ;


 TYPE_1__* calloc (int,int) ;
 int fatal_error (char*) ;
 int * fopen (char const*,char*) ;

OVERLAY_HELP_STATE_T *overlay_help_open(const char *helpfile)
{
    OVERLAY_HELP_STATE_T *state = ((void*)0);
    FILE *fp = fopen(helpfile, "r");
    if (fp)
    {
        state = calloc(1, sizeof(OVERLAY_HELP_STATE_T));
        if (!state)
                fatal_error("Out of memory");
        state->fp = fp;
        state->line_pos = -1;
        state->rec_pos = -1;
    }

    return state;
}
