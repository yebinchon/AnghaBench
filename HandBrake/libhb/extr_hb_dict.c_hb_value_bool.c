
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int * json_boolean (int) ;

hb_value_t * hb_value_bool(int value)
{
    return json_boolean(value);
}
