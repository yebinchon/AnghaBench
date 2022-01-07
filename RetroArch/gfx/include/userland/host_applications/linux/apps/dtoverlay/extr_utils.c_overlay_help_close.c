
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fp; } ;
typedef TYPE_1__ OVERLAY_HELP_STATE_T ;


 int fclose (int ) ;
 int free (TYPE_1__*) ;

void overlay_help_close(OVERLAY_HELP_STATE_T *state)
{
    fclose(state->fp);
    free(state);
}
