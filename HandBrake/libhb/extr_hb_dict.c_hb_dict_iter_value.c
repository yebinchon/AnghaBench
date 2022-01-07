
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;
typedef int hb_dict_iter_t ;


 int * json_object_iter_value (int const) ;

hb_value_t * hb_dict_iter_value(const hb_dict_iter_t iter)
{
    return json_object_iter_value(iter);
}
