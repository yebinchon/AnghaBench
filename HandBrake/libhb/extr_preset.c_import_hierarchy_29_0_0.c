
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int HB_PRESET_TYPE_CUSTOM ;
 scalar_t__ HB_PRESET_TYPE_OFFICIAL ;
 scalar_t__ HB_VALUE_TYPE_DICT ;
 char* fix_name_collisions (int *,char const*) ;
 int free (char*) ;
 int * hb_dict_get (int *,char*) ;
 scalar_t__ hb_dict_get_bool (int *,char*) ;
 scalar_t__ hb_dict_get_int (int *,char*) ;
 char* hb_dict_get_string (int *,char*) ;
 int * hb_dict_init () ;
 int hb_dict_set (int *,char*,int *) ;
 int hb_dict_set_bool (int *,char*,int) ;
 int hb_dict_set_int (int *,char*,int ) ;
 int hb_dict_set_string (int *,char*,char*) ;
 int hb_value_array_append (int *,int *) ;
 int * hb_value_array_get (int *,int) ;
 int * hb_value_array_init () ;
 int hb_value_array_insert (int *,int,int *) ;
 scalar_t__ hb_value_array_len (int *) ;
 int hb_value_array_remove (int *,int) ;
 int * hb_value_dup (int *) ;
 scalar_t__ hb_value_type (int *) ;
 int import_folder_hierarchy_29_0_0 (char const*,int *,int *) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static hb_value_t * import_hierarchy_29_0_0(hb_value_t *presets)
{
    hb_value_t * list = presets;
    hb_value_t * my_presets = ((void*)0);
    hb_value_t * my_presets_list;
    hb_value_t * new_list;
    int ii, count;

    if (hb_value_type(presets) == HB_VALUE_TYPE_DICT &&
        hb_dict_get(presets, "VersionMajor") != ((void*)0))
    {

        list = hb_dict_get(presets, "PresetList");
    }


    new_list = hb_value_array_init();
    count = hb_value_array_len(list);
    for (ii = 0; ii < count; ii++)
    {
        hb_value_t * item = hb_value_array_get(list, ii);
        if (hb_dict_get_int(item, "Type") != HB_PRESET_TYPE_OFFICIAL)
        {
            continue;
        }
        hb_value_array_append(new_list, hb_value_dup(item));
    }




    count = hb_value_array_len(list);
    for (ii = 0; ii < count; ii++)
    {
        hb_value_t * item = hb_value_array_get(list, ii);

        if (hb_dict_get_int(item, "Type") == HB_PRESET_TYPE_OFFICIAL)
        {

            continue;
        }
        if (hb_dict_get_bool(item, "Folder"))
        {
            int pos = hb_value_array_len(new_list);
            const char * name = hb_dict_get_string(item, "PresetName");
            if (strcmp(name, "My Presets"))
            {
                continue;
            }
            import_folder_hierarchy_29_0_0(name, new_list, item);

            my_presets = hb_value_dup(item);
            hb_value_array_insert(new_list, pos, my_presets);
            hb_value_array_remove(list, ii);
            break;
        }
    }
    if (my_presets == ((void*)0))
    {
        my_presets = hb_dict_init();
        hb_dict_set_string(my_presets, "PresetName", "My Presets");
        hb_dict_set(my_presets, "ChildrenArray", hb_value_array_init());
        hb_dict_set_int(my_presets, "Type", HB_PRESET_TYPE_CUSTOM);
        hb_dict_set_bool(my_presets, "Folder", 1);
        hb_value_array_append(new_list, my_presets);
    }
    my_presets_list = hb_dict_get(my_presets, "ChildrenArray");


    count = hb_value_array_len(list);
    for (ii = 0; ii < count; ii++)
    {
        hb_value_t * item = hb_value_array_get(list, ii);

        if (hb_dict_get_int(item, "Type") == HB_PRESET_TYPE_OFFICIAL)
        {

            continue;
        }
        if (hb_dict_get_bool(item, "Folder"))
        {
            int pos = hb_value_array_len(new_list);
            const char * name = hb_dict_get_string(item, "PresetName");
            import_folder_hierarchy_29_0_0(name, new_list, item);

            hb_value_t * children = hb_dict_get(item, "ChildrenArray");
            if (hb_value_array_len(children) > 0)
            {


                char * unique_name = fix_name_collisions(new_list, name);
                hb_dict_set_string(item, "PresetName", unique_name);
                hb_value_array_insert(new_list, pos, hb_value_dup(item));
                free(unique_name);
            }
        }
        else
        {
            hb_value_array_append(my_presets_list, hb_value_dup(item));
        }
    }

    if (hb_value_type(presets) == HB_VALUE_TYPE_DICT &&
        hb_dict_get(presets, "VersionMajor") != ((void*)0))
    {

        hb_dict_set(presets, "PresetList", new_list);
    }
    else
    {
        presets = new_list;
    }
    return hb_value_dup(presets);
}
