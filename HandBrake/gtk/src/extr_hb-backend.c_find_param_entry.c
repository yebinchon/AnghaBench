
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ index; int * name; int * short_name; } ;
typedef TYPE_1__ hb_filter_param_t ;
typedef scalar_t__ gint64 ;
typedef size_t gint ;
typedef int gchar ;
typedef int GhbValue ;


 scalar_t__ GHB_BOOL ;
 scalar_t__ GHB_DOUBLE ;
 scalar_t__ GHB_INT ;
 scalar_t__ GHB_STRING ;
 scalar_t__ ghb_value_get_int (int const*) ;
 int * ghb_value_get_string (int const*) ;
 scalar_t__ ghb_value_type (int const*) ;
 scalar_t__ strcmp (int *,int const*) ;

const hb_filter_param_t*
find_param_entry(const hb_filter_param_t *param, const GhbValue *gval)
{
    gint ii;

    if (param == ((void*)0))
        return ((void*)0);

    if (ghb_value_type(gval) == GHB_STRING)
    {
        const gchar *str;
        str = ghb_value_get_string(gval);
        for (ii = 0; param[ii].name != ((void*)0); ii++)
        {
            if (strcmp(param[ii].short_name, str) == 0 ||
                strcmp(param[ii].name, str) == 0)
            {
                return &param[ii];
            }
        }
    }
    else if (ghb_value_type(gval) == GHB_INT ||
             ghb_value_type(gval) == GHB_DOUBLE ||
             ghb_value_type(gval) == GHB_BOOL)
    {
        gint64 val;
        val = ghb_value_get_int(gval);
        for (ii = 0; param[ii].name != ((void*)0); ii++)
        {
            if ((gint64)param[ii].index == val)
            {
                return &param[ii];
            }
        }
    }
    return ((void*)0);
}
