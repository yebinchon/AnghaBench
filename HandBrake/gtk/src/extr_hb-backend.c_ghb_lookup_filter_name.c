
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* name; int short_name; } ;
typedef TYPE_1__ hb_filter_param_t ;


 TYPE_1__* hb_filter_param_get_presets (int) ;
 TYPE_1__* hb_filter_param_get_tunes (int) ;
 int strcasecmp (int ,char const*) ;

const char*
ghb_lookup_filter_name(int filter_id, const char *short_name, int preset)
{
    hb_filter_param_t *map;
    int ii;

    if (short_name == ((void*)0))
    {
        return ((void*)0);
    }
    if (preset)
    {
        map = hb_filter_param_get_presets(filter_id);
    }
    else
    {
        map = hb_filter_param_get_tunes(filter_id);
    }
    if (map == ((void*)0))
    {
        return ((void*)0);
    }
    for (ii = 0; map[ii].name != ((void*)0); ii++)
    {
        if (!strcasecmp(map[ii].short_name, short_name))
        {
            return map[ii].name;
        }
    }
    return ((void*)0);
}
