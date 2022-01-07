
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_dict_t ;


 int json_object_size (int *) ;

int hb_dict_elements(hb_dict_t * dict)
{
    return json_object_size(dict);
}
