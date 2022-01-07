
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;
typedef int hb_value_array_t ;
typedef int hb_dict_t ;


 int * hb_dict_init () ;
 int hb_dict_set (int *,char const*,int *) ;
 int hb_value_array_append (int *,int *) ;

void hb_avfilter_append_dict(hb_value_array_t * filters,
                           const char * name, hb_value_t * settings)
{
    hb_dict_t * filter_dict = hb_dict_init();

    hb_dict_set(filter_dict, name, settings);
    hb_value_array_append(filters, filter_dict);
}
