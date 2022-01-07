
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;
typedef int hb_dict_t ;


 int free (char*) ;
 int json_object_set_new (int *,char*,int *) ;
 char* makelower (char const*) ;

void hb_dict_case_set(hb_dict_t * dict, const char *key, hb_value_t *value)
{
    char * lower = makelower(key);
    json_object_set_new(dict, lower, value);
    free(lower);
}
