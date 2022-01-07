
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ gint64 ;
typedef size_t gint ;
typedef int gchar ;
struct TYPE_5__ {size_t count; TYPE_1__* map; } ;
typedef TYPE_2__ combo_opts_t ;
struct TYPE_4__ {scalar_t__ ivalue; int option; int shortOpt; } ;
typedef int GhbValue ;


 scalar_t__ GHB_BOOL ;
 scalar_t__ GHB_DOUBLE ;
 scalar_t__ GHB_INT ;
 scalar_t__ GHB_STRING ;
 scalar_t__ ghb_value_get_int (int const*) ;
 int * ghb_value_get_string (int const*) ;
 scalar_t__ ghb_value_type (int const*) ;
 scalar_t__ strcmp (int ,int const*) ;

gint
find_opt_entry(const combo_opts_t *opts, const GhbValue *gval)
{
    gint ii;

    if (opts == ((void*)0))
        return 0;

    if (ghb_value_type(gval) == GHB_STRING)
    {
        const gchar *str;
        str = ghb_value_get_string(gval);
        for (ii = 0; ii < opts->count; ii++)
        {
            if (strcmp(opts->map[ii].shortOpt, str) == 0 ||
                strcmp(opts->map[ii].option, str) == 0)
            {
                break;
            }
        }
        return ii;
    }
    else if (ghb_value_type(gval) == GHB_INT ||
             ghb_value_type(gval) == GHB_DOUBLE ||
             ghb_value_type(gval) == GHB_BOOL)
    {
        gint64 val;
        val = ghb_value_get_int(gval);
        for (ii = 0; ii < opts->count; ii++)
        {
            if ((gint64)opts->map[ii].ivalue == val)
            {
                break;
            }
        }
        return ii;
    }
    return opts->count;
}
