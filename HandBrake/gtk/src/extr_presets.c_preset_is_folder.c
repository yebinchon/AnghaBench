
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_preset_index_t ;
typedef int gboolean ;
typedef int GhbValue ;


 int FALSE ;
 int ghb_dict_get_bool (int *,char*) ;
 int * hb_preset_get (int *) ;

__attribute__((used)) static gboolean
preset_is_folder(hb_preset_index_t *path)
{
    GhbValue *dict;
    gboolean folder = FALSE;

    dict = hb_preset_get(path);
    if (dict)
    {
        folder = ghb_dict_get_bool(dict, "Folder");
    }
    return folder;
}
