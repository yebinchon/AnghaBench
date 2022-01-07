
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hb_value_t ;
struct TYPE_3__ {int depth; int* index; } ;
typedef TYPE_1__ hb_preset_index_t ;


 int * hb_dict_get (int *,char*) ;
 int * hb_presets ;
 int * hb_value_array_get (int *,int) ;
 int hb_value_array_len (int *) ;
 int hb_value_get_bool (int *) ;

hb_value_t *
hb_presets_get_folder_children(const hb_preset_index_t *path)
{
    int ii, count, folder;
    hb_value_t *dict;

    if (path == ((void*)0))
        return hb_presets;

    hb_value_t *presets = hb_presets;
    for (ii = 0; ii < path->depth; ii++)
    {
        count = hb_value_array_len(presets);
        if (path->index[ii] >= count) return ((void*)0);
        dict = hb_value_array_get(presets, path->index[ii]);
        folder = hb_value_get_bool(hb_dict_get(dict, "Folder"));
        if (!folder)
            break;
        presets = hb_dict_get(dict, "ChildrenArray");
    }
    if (ii < path->depth)
        return ((void*)0);
    return presets;
}
