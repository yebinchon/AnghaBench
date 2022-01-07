
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gchar ;
typedef int combo_opts_t ;
struct TYPE_3__ {int * opts; } ;
typedef TYPE_1__ combo_name_map_t ;


 TYPE_1__* find_combo_map (int const*) ;

combo_opts_t*
find_combo_opts(const gchar *name)
{
    combo_name_map_t *entry = find_combo_map(name);
    if (entry != ((void*)0))
    {
        return entry->opts;
    }
    return ((void*)0);
}
