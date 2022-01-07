
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t gint ;
typedef char gchar ;
struct TYPE_6__ {size_t count; TYPE_1__* map; } ;
typedef TYPE_2__ combo_opts_t ;
struct TYPE_5__ {char* option; } ;
typedef int GhbValue ;


 size_t find_opt_entry (TYPE_2__ const*,int const*) ;

__attribute__((used)) static const gchar*
lookup_generic_option(const combo_opts_t *opts, const GhbValue *gval)
{
    gint ii;
    const gchar *result = "";

    ii = find_opt_entry(opts, gval);
    if (ii < opts->count)
    {
        result = opts->map[ii].option;
    }
    return result;
}
