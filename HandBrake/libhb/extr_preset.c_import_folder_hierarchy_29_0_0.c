
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 char* fix_name_collisions (int *,char*) ;
 int free (char*) ;
 int * hb_dict_get (int *,char*) ;
 scalar_t__ hb_dict_get_bool (int *,char*) ;
 char* hb_dict_get_string (int *,char*) ;
 int hb_dict_set_string (int *,char*,char*) ;
 char* hb_strdup_printf (char*,char const*,char const*) ;
 int * hb_value_array_get (int *,int) ;
 int hb_value_array_insert (int *,int,int *) ;
 scalar_t__ hb_value_array_len (int *) ;
 int hb_value_array_remove (int *,int) ;
 int hb_value_incref (int *) ;

__attribute__((used)) static void import_folder_hierarchy_29_0_0(const char * name,
                                    hb_value_t * new_list, hb_value_t * folder)
{
    hb_value_t * list = hb_dict_get(folder, "ChildrenArray");
    int ii, count;

    count = hb_value_array_len(list);
    for (ii = 0; ii < count;)
    {
        hb_value_t * item = hb_value_array_get(list, ii);

        if (hb_dict_get_bool(item, "Folder"))
        {
            const char * folder_name;
            char * new_name;
            int pos = hb_value_array_len(new_list);

            folder_name = hb_dict_get_string(item, "PresetName");
            new_name = hb_strdup_printf("%s - %s", name, folder_name);
            import_folder_hierarchy_29_0_0(new_name, new_list, item);

            hb_value_t * children = hb_dict_get(item, "ChildrenArray");
            if (hb_value_array_len(children) > 0)
            {


                char * unique_name = fix_name_collisions(new_list, new_name);
                hb_dict_set_string(item, "PresetName", unique_name);
                hb_value_incref(item);
                hb_value_array_remove(list, ii);
                hb_value_array_insert(new_list, pos, item);
                free(unique_name);
            }
            else
            {
                hb_value_array_remove(list, ii);
            }
            free(new_name);
        }
        else
        {
            ii++;
        }
    }
}
