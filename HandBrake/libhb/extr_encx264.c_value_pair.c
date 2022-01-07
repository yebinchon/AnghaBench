
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int hb_value_array_append (int *,int *) ;
 int * hb_value_array_init () ;

__attribute__((used)) static hb_value_t * value_pair(hb_value_t * v1, hb_value_t * v2)
{
    hb_value_t *array = hb_value_array_init();
    hb_value_array_append(array, v1);
    hb_value_array_append(array, v2);
    return array;
}
