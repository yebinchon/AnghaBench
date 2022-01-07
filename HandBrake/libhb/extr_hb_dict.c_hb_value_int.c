
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_int_t ;
typedef int hb_value_t ;


 int * json_integer (int ) ;

hb_value_t * hb_value_int(json_int_t value)
{
    return json_integer(value);
}
