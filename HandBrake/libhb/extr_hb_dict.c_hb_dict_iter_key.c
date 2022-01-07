
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_dict_iter_t ;


 char const* json_object_iter_key (int const) ;

const char * hb_dict_iter_key(const hb_dict_iter_t iter)
{
    return json_object_iter_key(iter);
}
