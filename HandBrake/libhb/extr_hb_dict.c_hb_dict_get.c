
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;
typedef int hb_dict_t ;


 int free (char*) ;
 int * json_object_get (int const*,char const*) ;
 char* makelower (char const*) ;

hb_value_t * hb_dict_get(const hb_dict_t * dict, const char * key)
{
    hb_value_t * result;


    result = json_object_get(dict, key);
    if (result == ((void*)0))
    {

        char * lower = makelower(key);
        result = json_object_get(dict, lower);
        free(lower);
    }
    return result;
}
