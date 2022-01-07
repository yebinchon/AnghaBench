
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_dict_t ;


 int json_object_update (int *,int *) ;

void hb_dict_merge(hb_dict_t * dict, hb_dict_t *value)
{
    json_object_update(dict, value);
}
