
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_dict_t ;


 int free (char*) ;
 scalar_t__ json_object_del (int *,char const*) ;
 char* makelower (char const*) ;

int hb_dict_remove(hb_dict_t * dict, const char * key)
{
    int result;


    result = json_object_del(dict, key) == 0;
    if (!result)
    {

        char * lower = makelower(key);
        result = json_object_del(dict, lower) == 0;
        free(lower);
    }
    return result;
}
