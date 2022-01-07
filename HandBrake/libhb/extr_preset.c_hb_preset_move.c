
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int hb_value_t ;
struct TYPE_5__ {int depth; int* index; } ;
typedef TYPE_1__ hb_preset_index_t ;


 int hb_error (char*) ;
 int * hb_presets_get_folder_children (TYPE_1__*) ;
 int hb_value_array_append (int *,int *) ;
 int * hb_value_array_get (int *,int) ;
 int hb_value_array_insert (int *,int,int *) ;
 int hb_value_array_len (int *) ;
 int hb_value_array_remove (int *,int) ;
 int hb_value_incref (int *) ;

int hb_preset_move(const hb_preset_index_t *src_path,
                   const hb_preset_index_t *dst_path)
{
    hb_value_t *src_folder = ((void*)0);
    hb_value_t *dst_folder = ((void*)0);

    hb_preset_index_t src_folder_path = *src_path;
    hb_preset_index_t dst_folder_path = *dst_path;
    src_folder_path.depth--;
    dst_folder_path.depth--;
    src_folder = hb_presets_get_folder_children(&src_folder_path);
    dst_folder = hb_presets_get_folder_children(&dst_folder_path);
    if (src_folder == ((void*)0) || dst_folder == ((void*)0))
    {
        hb_error("hb_preset_move: not found");
        return -1;
    }

    hb_value_t *dict;
    int src_index, dst_index;

    src_index = src_path->index[src_path->depth-1];
    dst_index = dst_path->index[dst_path->depth-1];
    dict = hb_value_array_get(src_folder, src_index);
    hb_value_incref(dict);
    hb_value_array_remove(src_folder, src_index);


    if (src_folder == dst_folder && src_index < dst_index)
        dst_index--;
    if (hb_value_array_len(dst_folder) <= dst_index)
        hb_value_array_append(dst_folder, dict);
    else
        hb_value_array_insert(dst_folder, dst_index, dict);

    return 0;
}
