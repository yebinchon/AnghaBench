
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t gint ;
typedef int gchar ;
struct TYPE_4__ {int * name; } ;
typedef TYPE_1__ combo_name_map_t ;


 TYPE_1__* combo_name_map ;
 scalar_t__ strcmp (int const*,int *) ;

combo_name_map_t*
find_combo_map(const gchar *name)
{
    gint ii;

    for (ii = 0; combo_name_map[ii].name != ((void*)0); ii++)
    {
        if (strcmp(name, combo_name_map[ii].name) == 0)
        {
            return &combo_name_map[ii];
        }
    }
    return ((void*)0);
}
