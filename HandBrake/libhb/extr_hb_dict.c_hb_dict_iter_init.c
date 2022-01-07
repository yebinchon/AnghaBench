
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_dict_t ;
typedef int hb_dict_iter_t ;


 int HB_DICT_ITER_DONE ;
 int json_object_iter (int *) ;

hb_dict_iter_t hb_dict_iter_init(const hb_dict_t *dict)
{
    if (dict == ((void*)0))
        return HB_DICT_ITER_DONE;
    return json_object_iter((hb_dict_t*)dict);
}
