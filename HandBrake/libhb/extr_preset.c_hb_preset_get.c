
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int hb_value_t ;
struct TYPE_4__ {int depth; int * index; } ;
typedef TYPE_1__ hb_preset_index_t ;


 int hb_error (char*) ;
 int * hb_presets_get_folder_children (TYPE_1__*) ;
 int * hb_value_array_get (int *,int ) ;
 int hb_value_array_len (int *) ;

hb_value_t *
hb_preset_get(const hb_preset_index_t *path)
{
    hb_value_t *folder = ((void*)0);

    if (path == ((void*)0) || path->depth <= 0)
        return ((void*)0);

    hb_preset_index_t folder_path = *path;
    folder_path.depth--;
    folder = hb_presets_get_folder_children(&folder_path);
    if (folder)
    {
        if (hb_value_array_len(folder) <= path->index[path->depth-1])
        {
            hb_error("hb_preset_get: not found");
        }
        else
        {
            return hb_value_array_get(folder, path->index[path->depth-1]);
        }
    }
    else
    {
        hb_error("hb_preset_get: not found");
    }
    return ((void*)0);
}
