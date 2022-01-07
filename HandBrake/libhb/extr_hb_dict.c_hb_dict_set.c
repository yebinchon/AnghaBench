
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;
typedef int hb_dict_t ;


 int json_object_set_new (int *,char const*,int *) ;

void hb_dict_set(hb_dict_t * dict, const char *key, hb_value_t *value)
{
    json_object_set_new(dict, key, value);
}
