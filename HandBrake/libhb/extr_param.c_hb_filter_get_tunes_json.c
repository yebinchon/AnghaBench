
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hb_value_array_t ;
struct TYPE_3__ {int * name; int * short_name; } ;
typedef TYPE_1__ hb_filter_param_t ;
typedef int hb_dict_t ;


 TYPE_1__* filter_param_get_tunes_internal (int,int *) ;
 int * hb_dict_init () ;
 int hb_dict_set (int *,char*,int ) ;
 int hb_value_array_append (int *,int *) ;
 int * hb_value_array_init () ;
 int hb_value_free (int **) ;
 char* hb_value_get_json (int *) ;
 int hb_value_string (int *) ;

char * hb_filter_get_tunes_json(int filter_id)
{
    hb_value_array_t * array = hb_value_array_init();
    int ii, count = 0;
    hb_filter_param_t * table;

    table = filter_param_get_tunes_internal(filter_id, ((void*)0));

    for (count = 0; table[count].name != ((void*)0); count++);
    for (ii = 0; ii < count; ii++)
    {
        hb_dict_t * dict = hb_dict_init();
        hb_dict_set(dict, "short_name", hb_value_string(table[ii].short_name));
        hb_dict_set(dict, "name", hb_value_string(table[ii].name));
        hb_value_array_append(array, dict);
    }

    char * result = hb_value_get_json(array);
    hb_value_free(&array);
    return result;
}
