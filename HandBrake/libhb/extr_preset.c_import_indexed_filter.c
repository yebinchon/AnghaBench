
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int index; char const* short_name; int * name; } ;
typedef TYPE_1__ hb_filter_param_t ;


 TYPE_1__* hb_filter_param_get_presets (int) ;

__attribute__((used)) static const char* import_indexed_filter(int filter_id, int index)
{
    hb_filter_param_t *filter_presets;
    filter_presets = hb_filter_param_get_presets(filter_id);

    int ii;
    for (ii = 0; filter_presets[ii].name != ((void*)0); ii++)
    {
        if (filter_presets[ii].index == index)
            break;
    }
    return filter_presets[ii].short_name;
}
