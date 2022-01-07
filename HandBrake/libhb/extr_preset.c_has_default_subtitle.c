
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;
typedef int hb_value_array_t ;


 int hb_dict_get (int *,char*) ;
 int * hb_value_array_get (int *,int) ;
 int hb_value_array_len (int *) ;
 int hb_value_get_int (int ) ;

__attribute__((used)) static int has_default_subtitle(hb_value_array_t *list)
{
    int ii, count, def;

    count = hb_value_array_len(list);
    for (ii = 0; ii < count; ii++)
    {
        hb_value_t *sub = hb_value_array_get(list, ii);
        def = hb_value_get_int(hb_dict_get(sub, "Default"));
        if (def)
        {
            return def;
        }
    }
    return 0;
}
