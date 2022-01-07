
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gchar ;
struct TYPE_3__ {int opts; int * (* opt_get ) (int const*,int ,int const*,int ) ;} ;
typedef TYPE_1__ combo_name_map_t ;
typedef int GhbValue ;
typedef int GhbType ;


 TYPE_1__* find_combo_map (int const*) ;
 int g_warning (char*,int const*) ;
 int * stub1 (int const*,int ,int const*,int ) ;

__attribute__((used)) static GhbValue *
lookup_combo_value(const gchar *name, const GhbValue *gval, GhbType type)
{
    combo_name_map_t *entry = find_combo_map(name);
    if (entry != ((void*)0))
    {
        if (entry->opt_get != ((void*)0))
        {
            return entry->opt_get(name, entry->opts, gval, type);
        }
        else
        {
            g_warning("Combobox entry %s missing opt_get()", name);
        }
    }
    else
    {
        g_warning("Combobox entry %s not found", name);
    }
    return ((void*)0);
}
