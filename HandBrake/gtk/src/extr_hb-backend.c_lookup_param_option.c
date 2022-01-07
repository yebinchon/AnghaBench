
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* name; } ;
typedef TYPE_1__ hb_filter_param_t ;
typedef char gchar ;
typedef int GhbValue ;


 TYPE_1__* find_param_entry (TYPE_1__ const*,int const*) ;

__attribute__((used)) static const gchar*
lookup_param_option(const hb_filter_param_t *param, const GhbValue *gval)
{
    const gchar *result = "";

    const hb_filter_param_t *entry;
    entry = find_param_entry(param, gval);
    if (entry != ((void*)0))
    {
        result = entry->name;
    }
    return result;
}
