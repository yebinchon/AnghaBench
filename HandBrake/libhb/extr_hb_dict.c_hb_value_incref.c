
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int * json_incref (int *) ;

hb_value_t* hb_value_incref(hb_value_t *value)
{
    return json_incref(value);
}
