
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int hb_value_t ;
struct TYPE_4__ {int depth; int * index; } ;
typedef TYPE_1__ hb_preset_index_t ;


 int hb_error (char*) ;
 int hb_preset_template ;
 int * hb_presets_get_folder_children (TYPE_1__*) ;
 int hb_value_array_len (int *) ;
 int hb_value_array_set (int *,int ,int *) ;
 int * hb_value_dup (int const*) ;
 int presets_clean (int *,int ) ;

int
hb_preset_set(const hb_preset_index_t *path, const hb_value_t *dict)
{
    hb_value_t *folder = ((void*)0);

    if (dict == ((void*)0) || path == ((void*)0) || path->depth <= 0)
        return -1;

    hb_preset_index_t folder_path = *path;
    folder_path.depth--;
    folder = hb_presets_get_folder_children(&folder_path);
    if (folder)
    {
        if (hb_value_array_len(folder) <= path->index[path->depth-1])
        {
            hb_error("hb_preset_replace: not found");
            return -1;
        }
        else
        {
            hb_value_t *dup = hb_value_dup(dict);
            presets_clean(dup, hb_preset_template);
            hb_value_array_set(folder, path->index[path->depth-1], dup);
        }
    }
    else
    {
        hb_error("hb_preset_replace: not found");
        return -1;
    }
    return 0;
}
