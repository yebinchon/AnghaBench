
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;
typedef int hb_dict_t ;
typedef int * hb_dict_iter_t ;


 char* json_object_iter_key (int *) ;
 int * json_object_iter_next (int *,int *) ;
 int * json_object_iter_value (int *) ;

int
hb_dict_iter_next_ex(const hb_dict_t *dict, hb_dict_iter_t *iter,
                     const char **key, hb_value_t **val)
{
    if (*iter == ((void*)0))
        return 0;
    if (key != ((void*)0))
        *key = json_object_iter_key(*iter);
    if (val != ((void*)0))
        *val = json_object_iter_value(*iter);
    *iter = json_object_iter_next((hb_dict_t*)dict, *iter);
    return 1;
}
