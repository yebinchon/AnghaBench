
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int json_is_number (int const*) ;

int hb_value_is_number(const hb_value_t *value)
{
    return json_is_number(value);
}
