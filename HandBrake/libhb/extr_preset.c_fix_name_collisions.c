
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int free (char*) ;
 char* hb_dict_get_string (int *,char*) ;
 char* hb_strdup_printf (char*,char const*,int ) ;
 int * hb_value_array_get (int *,int) ;
 int hb_value_array_len (int *) ;
 int strcmp (char*,char const*) ;
 char* strdup (char const*) ;

__attribute__((used)) static char * fix_name_collisions(hb_value_t * list, const char * name)
{
    char * new_name = strdup(name);
    int ii, jj, count;

    count = hb_value_array_len(list);
    for (ii = 0, jj = 0; ii < count; ii++)
    {
        hb_value_t * item = hb_value_array_get(list, ii);
        const char * preset_name;

        preset_name = hb_dict_get_string(item, "PresetName");
        if (!strcmp(new_name, preset_name))
        {

            free(new_name);
            new_name = hb_strdup_printf("%s - %d", name, jj++);
            ii = -1;
        }
    }
    return new_name;
}
