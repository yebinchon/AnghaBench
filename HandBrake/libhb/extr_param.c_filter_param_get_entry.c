
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * short_name; int * name; } ;
typedef TYPE_1__ hb_filter_param_t ;


 int strcasecmp (char const*,int *) ;

__attribute__((used)) static hb_filter_param_t*
filter_param_get_entry(hb_filter_param_t *table, const char *name, int count)
{
    if (table == ((void*)0) || name == ((void*)0))
        return ((void*)0);

    int ii;
    for (ii = 0; ii < count; ii++)
    {
        if ((table[ii].name != ((void*)0) && !strcasecmp(name, table[ii].name)) ||
            (table[ii].short_name != ((void*)0) &&
             !strcasecmp(name, table[ii].short_name)))
        {
            return &table[ii];
        }
    }
    return ((void*)0);
}
