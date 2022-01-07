
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;
typedef int hb_preset_index_t ;


 int hb_error (char*) ;
 int hb_preset_template ;
 int * hb_presets_get_folder_children (int const*) ;
 int hb_value_array_append (int *,int *) ;
 int hb_value_array_len (int *) ;
 int * hb_value_dup (int const*) ;
 int presets_clean (int *,int ) ;

int hb_preset_append(const hb_preset_index_t *path, const hb_value_t *dict)
{
    hb_value_t *folder = ((void*)0);

    if (dict == ((void*)0))
        return -1;

    folder = hb_presets_get_folder_children(path);
    if (folder)
    {
        int index;
        hb_value_t *dup = hb_value_dup(dict);
        presets_clean(dup, hb_preset_template);
        index = hb_value_array_len(folder);
        hb_value_array_append(folder, dup);
        return index;
    }
    else
    {
        hb_error("hb_preset_append: not found");
        return -1;
    }
    return 0;
}
