
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int HB_PRESET_TYPE_ALL ;
 int PRESET_DO_NEXT ;
 int PRESET_DO_PARTIAL ;
 int PRESET_DO_SKIP ;
 int PRESET_DO_SUCCESS ;
 int hb_dict_get (int *,char*) ;
 int hb_value_get_int (int ) ;
 char* hb_value_get_string (int ) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;
 int strncmp (char const*,char const*,int) ;

__attribute__((used)) static int preset_cmp_idx(hb_value_t *preset, int idx,
                          const char *name, int type)
{
    const char *next, *preset_name;
    int ii, len;

    if (type != HB_PRESET_TYPE_ALL &&
        type != hb_value_get_int(hb_dict_get(preset, "Type")))
    {
        return PRESET_DO_NEXT;
    }


    if (name[0] == '/')
        name++;


    for (ii = 0; ii < idx; ii++)
    {
        next = strchr(name, '/');
        if (next == ((void*)0))
            return PRESET_DO_SKIP;
        next++;
        name = next;
    }


    next = strchr(name, '/');
    if (next != ((void*)0))
        len = next - name;
    else
        len = strlen(name);
    if (len <= 0)
        return PRESET_DO_SKIP;

    preset_name = hb_value_get_string(hb_dict_get(preset, "PresetName"));
    if (strlen(preset_name) > len)
        len = strlen(preset_name);


    if (!strncmp(name, preset_name, len))
    {
        if (name[len] == 0)
            return PRESET_DO_SUCCESS;
        else
            return PRESET_DO_PARTIAL;
    }
    return PRESET_DO_NEXT;
}
