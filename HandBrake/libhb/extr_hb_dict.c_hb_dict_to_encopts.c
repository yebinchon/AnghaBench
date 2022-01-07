
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_dict_t ;


 char* hb_value_get_string_xform (int const*) ;

char * hb_dict_to_encopts(const hb_dict_t * dict)
{
    return hb_value_get_string_xform(dict);
}
