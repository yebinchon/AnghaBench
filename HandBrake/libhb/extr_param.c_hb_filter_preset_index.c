
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int index; } ;
typedef TYPE_1__ hb_filter_param_t ;


 TYPE_1__* filter_param_get_entry (TYPE_1__*,char const*,int) ;
 TYPE_1__* filter_param_get_presets_internal (int,int*) ;

int
hb_filter_preset_index(int filter_id, const char *preset)
{
    if (preset == ((void*)0))
        return -1;

    int preset_count;
    hb_filter_param_t *preset_table;
    hb_filter_param_t *preset_entry;

    preset_table = filter_param_get_presets_internal(filter_id, &preset_count);
    preset_entry = filter_param_get_entry(preset_table, preset, preset_count);
    if (preset_entry == ((void*)0))
        return -1;
    return preset_entry->index;
}
