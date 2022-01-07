
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_preset_index_t ;
typedef int gint ;
typedef int GhbValue ;


 int g_warning (char*) ;
 int ghb_dict_get_int (int *,char*) ;
 int * hb_preset_get (int *) ;

__attribute__((used)) static gint
preset_get_type(hb_preset_index_t *path)
{
    GhbValue *dict;
    dict = hb_preset_get(path);
    if (dict)
    {
        return ghb_dict_get_int(dict, "Type");
    }
    else
    {
        g_warning("ghb_preset_get_type (): internal preset lookup error");
        return 0;
    }
    return 0;
}
