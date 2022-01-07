
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_dict_t ;


 int hb_value_free (int **) ;

void hb_dict_free(hb_dict_t **_dict)
{
    hb_value_free(_dict);
}
